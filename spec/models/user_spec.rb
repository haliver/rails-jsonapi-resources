require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validates' do
    subject { described_class.new.valid? }
    context 'nameは必須' do
      let(:name) { nil }
      it { expect(subject).to be_falsy }
    end

    context 'emailは必須' do
      let(:email) { nil }
      it { expect(subject).to be_falsy }
    end

    context 'passwordは必須' do
      let(:password) { nil }
      it { expect(subject).to be_falsy }
    end
  end

  describe '#scopes' do
    context '.deletes' do
      let!(:user_a) { FactoryGirl.create(:user) }
      let!(:user_b) { FactoryGirl.create(:user, deleted_at: Time.zone.now) }
      it { expect(User.deletes).to eq([user_b]) }
    end
  end
end
