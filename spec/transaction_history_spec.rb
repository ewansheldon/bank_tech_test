require 'transaction_history'

describe TransactionHistory do

  let(:transaction) {double(:transaction)}

  it 'can save a transaction to its log' do
    subject.save(transaction, 0)
    expect(subject.instance_variable_get(:@transactions)).to include transaction
  end

  it 'can display its history' do
  end
end
