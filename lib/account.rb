require_relative 'transaction_history'
require_relative 'transaction'

class Account

  attr_reader :transaction_history

  def initialize(transaction_history = TransactionHistory.new,
                 transaction_class = Transaction)
    @balance = 0
    @transaction_history = transaction_history
    @transaction_class = transaction_class
  end

  def show_balance
    "£#{@balance}"
  end

  def withdraw(amount)
    deduct(amount)
    save_transaction(-amount)
  end

  def deposit(amount)
    add(amount)
    save_transaction(amount)
  end

  def print_statement
    @transaction_history.show_history
  end

  private

  def deduct(amount)
    @balance -= amount
  end

  def add(amount)
    @balance += amount
  end

  def save_transaction(amount)
    @transaction = @transaction_class.new(amount)
    @transaction_history.save(@transaction, @balance)
  end

end
