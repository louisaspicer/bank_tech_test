#controller - updates the balance and statement classes
class Transaction

  attr_accessor :balance_amount

  def initialize(balance_klass)
    @balance_amount = balance_klass.amount
  end

  def deposit(amount)
    @balance_amount += amount
  end

  def withdraw(amount)
    @balance_amount -= amount
  end

  def date
    Time.now.strftime("%d/%m/%Y")
  end

  # private
  # def balance_amount
  #   @balance.amount
  # end

end
