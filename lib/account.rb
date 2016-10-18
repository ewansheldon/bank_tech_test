class Account #controls, knows and shows balance

  def initialize(transaction_history = TransactionHistory.new)
    @balance = 0
    @transaction_history = transaction_history
    # @transaction_class = transaction_class
  end

  def show_balance
    @balance
  end

  def withdraw(amount)
    deduct(amount)
    # @transaction = transaction_class.new
    # @transaction_history.save
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
