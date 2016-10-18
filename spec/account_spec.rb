require 'account'

describe Account do
  it 'knows the current balance of an account' do
    expect(subject.show_balance).to eq 0
  end
end
