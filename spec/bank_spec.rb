require './lib/bank.rb'

describe Bank do

  subject(:bank) {described_class.new(balance_klass.new, statement_klass.new)}

  let(:balance_klass) {double :balance_klass, new: balance}
  let(:balance) {double :balance, amount: 0}

  let(:statement_klass) {double :statement_klass, new: statement}
  let(:statement) {double :statement, history: "Date | Credit | Debit | Balance\n"}

  describe '#initializing' do
    it 'takes in the balance' do
      expect(bank.balance_amount).to eq(balance.amount)
    end

    it 'takes in the statement' do
      expect(bank.statement).to eq(statement)
    end
  end

  describe '#deposit' do
    it 'increases the balance amount' do
      expect{bank.deposit(20)}.to change{bank.balance_amount}.from(0).to(20)
    end

    it 'returns updated statement string' do
      date = Time.now.strftime("%d/%m/%Y")
      string = "#{date} |  | 20 | 20\n"
      expect(bank.deposit(20)).to eq("Date | Credit | Debit | Balance\n#{string}")
    end

  end

  describe '#withdraw' do
    it 'decrease the balance amount' do
      expect{bank.withdraw(20)}.to change{bank.balance_amount}.from(0).to(-20)
    end

    it 'returns updated statement string' do
      date = Time.now.strftime("%d/%m/%Y")
      string = "#{date} | 20 |  | -20\n"
      expect(bank.withdraw(20)).to eq("Date | Credit | Debit | Balance\n#{string}")
    end
  end

  describe '#print_statement' do
    it "prints the transaction history" do
      expect{bank.print_statement}.to output(statement.history).to_stdout
    end
  end


end
