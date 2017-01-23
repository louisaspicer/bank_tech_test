require './lib/statement.rb'
require './lib/balance.rb'

class Transaction

  attr_accessor :balance, :statement, :statement_history

  def initialize(balance_klass, statement_klass)
    @balance = (balance_klass.new).amount
    @statement = statement_klass
    @statement_history = []
  end

  def deposit(amount)
    self.balance += amount
    update_statement(date, "", amount, self.balance)
  end

  def withdraw(amount)
    self.balance -= amount
    update_statement(date, amount, "", self.balance)
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

end
