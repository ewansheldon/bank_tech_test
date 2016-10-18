class TransactionHistory

  def initialize
    @transactions = []
    @formatted_transactions = []
  end

  def save(transaction, balance)
    @formatted_transactions.unshift(table_format(transaction, balance))
    @transactions << transaction
  end

  def show_history
    puts table_heading
    puts @formatted_transactions
  end

  private

  def table_heading
    "date     || credit || debit || balance\n"
  end

  def table_format(transaction, balance)
    credit = ""
    debit = ""
    date = transaction.time.strftime("%d/%m/%y")
    transaction.amount > 0 ? credit << transaction.amount.to_s : debit << (-transaction.amount).to_s
    "#{date} || #{credit} || #{debit} || #{balance.to_s}\n"
  end

end
