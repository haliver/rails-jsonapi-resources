require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '#validates' do
    subject { described_class.new.valid? }
    context 'user_idは必須' do
      let(:user_id) { nil }
      it { expect(subject).to be_falsy }
    end
  end
end
