require 'transaction_history'

describe TransactionHistory do

  let(:transaction) {double(:transaction, time: time, amount: 0)}
  let(:time) {double(:time, strftime: nil)}

  describe '#save' do
    it 'can save a transaction to its log' do
      subject.save(transaction, 0)
      expect(subject.instance_variable_get(:@transactions)).to include transaction
    end
  end

  describe '#show_history' do
    specify{expect{subject.show_history}.to output.to_stdout}
  end
end
