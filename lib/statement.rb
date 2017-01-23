#statement model
class Statement

  attr_accessor :date, :credit, :debit, :balance

  def initialize(*args)
    @date, @credit, @debit, @balance = args
  end

end
