# == Schema Information
#
# Table name: bonds
#
#  id         :bigint           not null, primary key
#  state      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  friend_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_bonds_on_user_id_and_friend_id  (user_id,friend_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (friend_id => users.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Bond, type: :model do
  describe "#valid?" do
    it "should validate the state correctly" do
      friend = User.new
      user = User.new

      bond = Bond.new(user: user, friend: friend)

      expect(bond).not_to be_valid

      Bond::STATES.each do |state|
        bond.state = state
        expect(bond).to be_valid
      end
    end
  end

  describe "#save" do
    context "" do
      it "can be persisted" do
        user = User.create email: "be@example.com",
                           first_name: "Edward",
                           username: "edward4be"

        friend = User.create email: "allan32@example.com",
                             first_name: "Allan",
                             username: "allan32"

        bond = Bond.new(
          user: user,
          friend: friend,
          state: Bond::REQUESTING
        )

        bond.save
        expect(bond).to be_persisted
        expect(bond.user).to eq user
        expect(bond.friend).to eq friend
      end
    end
  end
end
