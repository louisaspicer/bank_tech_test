require './lib/statement_view.rb'

describe Statement_View do

  subject(:statement_view) {described_class.new}
  let(:statement) {double :statement, date: Date.today, credit: "", debit: 20, balance: 20}

  describe '#initializing' do
    it "can hold the statement history" do
      expect(statement_view.history).to eq([])
    end
  end

  describe '#print_statement' do
    context "no history" do
      it "prints the empty transaction history" do
        statement = "Date        || Credit  || Debit   || Balance\n"
        expect{statement_view.print_statement}.to output(statement).to_stdout
      end
    end
  end

end
