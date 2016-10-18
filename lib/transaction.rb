class Transaction

  attr_reader :amount, :date

  def initialize(amount)
    @amount = amount
    @date = Time.new.strftime("%d/%m/%y")
  end

end
