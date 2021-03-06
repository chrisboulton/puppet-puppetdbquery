#! /usr/bin/env ruby -S rspec

require 'spec_helper'

describe "the pdbquery function" do
  let(:scope) { PuppetlabsSpec::PuppetInternals.scope }

  it "should exist" do
    Puppet::Parser::Functions.function("pdbquery").should == "function_pdbquery"
  end

  it "should raise a ParseError if there is less than 1 arguments" do
    lambda { scope.function_pdbquery([]) }.should( raise_error(Puppet::ParseError))
  end

  it "should raise a ParseError if there are more than 2 arguments" do
    lambda { scope.function_pdbquery([1, 2, 3]) }.should( raise_error(Puppet::ParseError))
  end
end
