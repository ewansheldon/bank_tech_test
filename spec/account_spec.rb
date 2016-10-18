require 'account'

describe Account do

  describe '#show_balance' do
    it 'knows the current balance of an account' do
      expect(subject.show_balance).to eq "£0"
    end
  end

  describe '#withdraw' do
    it 'takes the given amount from the balance' do
      subject.withdraw(50)
      expect(subject.show_balance).to eq "£-50"
    end
  end

  describe '#deposit' do
    it 'adds the given amount to the balance' do
      subject.deposit(50)
      expect(subject.show_balance).to eq "£50"
    end
  end


end
