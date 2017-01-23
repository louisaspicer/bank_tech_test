class Balance

  attr_reader :amount

  def initialize
    @amount = 0
  end

  def update_balance(amount)
    @amount += amount
  end

end
