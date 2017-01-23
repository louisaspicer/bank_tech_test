require './lib/statement.rb'

describe Statement do

  subject(:statement) {described_class.new}

  describe "#initializing" do
    it "has an initial header string" do
      expect(statement.history).to eq("Date | Credit | Debit | Balance\n")
    end
  end

  # describe "#print_statement" do
  #   it "prints the transaction history" do
  #     statement.history = "Date | Credit | Debit | Balance\n", "23/01/2017 | 20 |  | -20\n"
  #     expect(statement.print_history).to eq(statement.history)
  #   end
  # end



end
