require_relative 'transaction_history'
require_relative 'transaction'

class Account #controls, knows and shows balance

  def initialize(transaction_history = TransactionHistory.new,
                 transaction_class = Transaction)
    @balance = 0
    @transaction_history = transaction_history
    @transaction_class = transaction_class
  end

  def show_balance
    @balance
  end

  def withdraw(amount)
    deduct(amount)
    @transaction = @transaction_class.new(amount)
    @transaction_history.save(@transaction, @balance)
  end

  def deposit(amount)
    add(amount)
    @transaction = @transaction_class.new(amount)
    @transaction_history.save(@transaction, @balance)
  end

  private

  def deduct(amount)
    @balance -= amount
  end

  def add(amount)
    @balance += amount
  end

end
