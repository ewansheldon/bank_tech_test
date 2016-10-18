class TransactionHistory

  def initialize
    @transactions = []
  end

  def save(transaction)
    @transactions << transaction
  end

end
