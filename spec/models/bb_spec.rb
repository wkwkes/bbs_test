require 'rails_helper'

RSpec.describe Bb, type: :model do
  context "1st model test" do
    it "1 bb" do
      bb = build(:bb)
      expect(bb).to be_valid
    end
    
    it "2 bb" do
      bb = build(:bb, name: "name longer than twenty chars")
      expect(bb).not_to be_valid
    end
    
    it "3 bb" do
      too_long_comment = "comment" * 140
      bb = build(:bb, comment: too_long_comment)
      expect(bb).not_to be_valid
    end
  end
end
