require 'spec_helper'

describe List do
  it {should respond_to :title}

  it "should have valid factory" do
    FactoryGirl.build(:list).should be_valid
  end


end