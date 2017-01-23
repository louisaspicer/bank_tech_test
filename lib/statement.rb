class Statement

  # attr_accessor :history
  #
  # def initialize
  #   @history = "Date | Credit | Debit | Balance\n"
  # end

  attr_accessor :date, :credit, :debit, :balance

  def initialize(*args)
    @date, @credit, @debit, @balance = args
  end

end
