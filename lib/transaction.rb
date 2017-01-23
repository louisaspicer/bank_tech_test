#controller - updates the balance and statement classes
class Transaction

  attr_accessor :balance_amount, :statement

  def initialize(balance_klass, statement_klass)
    @balance_amount = balance_klass.amount
    @statement = statement_klass
  end

  def deposit(amount)
    @balance_amount += amount
    update_statement("#{date} |  | #{amount} | #{@balance_amount}\n")
  end

  def withdraw(amount)
    @balance_amount -= amount
    update_statement("#{date} | #{amount} |  | #{@balance_amount}\n")
  end



  private

  def date
    Time.now.strftime("%d/%m/%Y")
  end

  def update_statement(statement_string)
    @statement.history << statement_string
  end

  # def statement_string(date, credit, debit, balance)
  #   "#{date} | #{credit} | #{debit} | #{balance}\n"
  # end


  # private
  # def balance_amount
  #   @balance.amount
  # end

end
