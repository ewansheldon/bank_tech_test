class TransactionHistory

  def initialize
    @transactions = []
  end

  def save(transaction, balance)
    @transactions << transaction
  end

  def show_history
  end

end
