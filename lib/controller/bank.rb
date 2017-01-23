#controller - updates the balance and statement classes
class Bank

  attr_accessor :balance_amount, :statement, :statement_history

  def initialize(balance_klass, statement_klass)
    @balance_amount = balance_klass.amount
    @statement = statement_klass
    @statement_history = []
  end

  def deposit(amount)
    @balance_amount += amount
    update_statement(date, "", amount, @balance_amount)
  end

  def withdraw(amount)
    @balance_amount -= amount
    update_statement(date, amount, "", @balance_amount)
  end

  def print_statement
    format = "%-10s %-10s %-10s %-10s"
    puts format % ['Date', ' || Credit', ' || Debit', ' || Balance']
    statement_history.each do |statement|
      puts format % [statement.date, " || #{statement.credit}", " || #{statement.debit}", " || #{statement.balance}"]
    end
  end

  private

  def date
    Time.now.strftime("%d/%m/%Y")
  end

  def update_statement(date, credit, debit, balance)
    @statement_history << @statement.new(date, credit, debit, balance)
  end

  # def statement_string(date, credit, debit, balance)
  #   "#{date} | #{credit} | #{debit} | #{balance}\n"
  # end


  # private
  # def balance_amount
  #   @balance.amount
  # end

end
