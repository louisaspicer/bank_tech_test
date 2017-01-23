class Transaction

  attr_reader :balance
  
  def initialize(balance_klass)
    @balance = balance_klass.new
  end

end
