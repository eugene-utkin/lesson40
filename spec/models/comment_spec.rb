require "rails_helper"

describe Comment do

  describe "validations" do
    it { should validate_length_of :body }
  end

  describe "associations" do 
    it { should belong_to :article }
  end

end