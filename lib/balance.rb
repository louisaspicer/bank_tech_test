class Balance

  attr_reader :amount

  def initialize
    @amount = 0
  end

  def increase_balance(amount)
    @amount += amount
  end

  def decrease_balance(amount)
    @amount -= amount
  end


end
