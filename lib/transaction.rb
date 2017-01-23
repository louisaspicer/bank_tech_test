#controller - updates the balance class
class Transaction

  attr_accessor :balance_amount

  def initialize(balance_klass)
    @balance_amount = balance_klass.amount
  end

  def deposit(amount)
    @balance_amount += amount
  end

  # private
  # def balance_amount
  #   @balance.amount
  # end

end
