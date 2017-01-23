require './lib/statement_view.rb'

describe Statement_View do

  subject(:statement_view) {described_class.new}

  describe '#initializing' do
    it "can hold the statement history" do
      expect(statement_view.history).to eq([])
    end
  end

  describe '#print_statement' do
    it "prints the transaction history" do
      statement = "Date        || Credit  || Debit   || Balance\n"
      expect{statement_view.print_statement}.to output(statement).to_stdout
    end
  end

end
