require 'spec_helper'

describe B do
  
  let(:b) { FactoryGirl.create(:b) }

  subject { b }

  it { should be_valid }
  
end
