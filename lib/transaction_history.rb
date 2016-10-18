class TransactionHistory

  def initialize
    @transactions = []
    @formatted_transactions = ""
  end

  def save(transaction, balance)
    @formatted_transactions << table_format(transaction, balance)
    @transactions << transaction
  end

  def table_format(transaction, balance)
    credit = ""
    debit = ""
    date = transaction.time.strftime("%d/%m/%y")
    if transaction.amount > 0
      credit << transaction.amount.to_s
    elsif transaction.amount < 0
      debit << transaction.amount.to_s
    end
    return date + " ||   " + credit + "   ||   " + debit + "   ||   " + balance.to_s + "\n"
  end

  def show_history
    puts table_heading + @formatted_transactions
  end

  def table_heading
    "date     || credit || debit || balance\n"
  end

end
