class Account #controls, knows and shows balance

  def initialize(transactions = TransactionHistory.new)
    @balance = 0
    @transactions = transactions
  end

  def show_balance
    @balance
  end

  def withdraw(amount)
    deduct(amount)
  end

  def deposit(amount)
    add(amount)
  end

  private

  def deduct(amount)
  @balance -= amount
  end

  def add(amount)
    @balance += amount
  end

end
