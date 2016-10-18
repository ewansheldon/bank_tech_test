require 'transaction'

describe Transaction do

  let(:transaction) {described_class.new(50)}

  describe 'amount' do
    it 'knows its amount' do
      expect(transaction.amount).to eq 50
    end
  end
end
