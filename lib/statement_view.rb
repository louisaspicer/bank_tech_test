class Statement_View

  attr_accessor :history

  def initialize
    @history = []
  end

  def print_statement
    format = "%-10s %-10s %-10s %-10s"
    puts format % ['Date', ' || Credit', ' || Debit', ' || Balance']
    history.each do |statement|
      puts format % [statement.date, " || #{statement.credit}", " || #{statement.debit}", " || #{statement.balance}"]
    end
  end



end
