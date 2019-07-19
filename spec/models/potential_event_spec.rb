require "rails_helper"

RSpec.describe PotentialEvent do

  context "#manage_token" do
    it "is generated if blank" do
      pe = described_class.new
      expect(pe.manage_token).to be_nil
      expect(pe).to be_valid
      expect(pe.manage_token).not_to be_nil
    end

    it "must be unique" do
      existing = described_class.create!

      dupe = described_class.new(manage_token: existing.manage_token)
      expect(dupe).not_to be_valid
      expect(dupe.errors[:manage_token]).not_to be_empty
    end
  end

end
