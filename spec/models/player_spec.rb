require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:player) { FactoryBot.create(:player, dob: date_of_birth) }
  let(:date_of_birth) { Time.zone.today.advance(years: -age) }
  let(:age) { 40 }

  describe "#age!" do
    it "returns the age in the correct format" do
      expect(player.age!).to eq(age)
    end

    context "when the player's date of birth was yesterday" do
      let(:date_of_birth) { Time.zone.yesterday }

      it "returns zero" do
        expect(player.age!).to eq(0)
      end
    end
  end
end
