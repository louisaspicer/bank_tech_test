require './lib/transaction.rb'

describe Transaction do

  subject(:transaction) {described_class.new(balance_klass.new, statement_klass.new)}

  let(:balance_klass) {double :balance_klass, new: balance}
  let(:balance) {double :balance, amount: 0}

  let(:statement_klass) {double :statement_klass, new: statement}
  let(:statement) {double :statement, history: ["Date | Credit | Debit | Balance\n"]}

  describe '#initializing' do
    it 'takes in the balance' do
      expect(transaction.balance_amount).to eq(balance.amount)
    end

    it 'takes in the statement' do
      expect(transaction.statement).to eq(statement)
    end
  end

  describe '#deposit' do
    it 'increases the balance amount' do
      expect{transaction.deposit(20)}.to change{transaction.balance_amount}.from(0).to(20)
    end

    # it 'updates statement with deposit amount and date' do
    #
    # end

  end

  describe '#withdraw' do
    it 'decrease the balance amount' do
      expect{transaction.withdraw(20)}.to change{transaction.balance_amount}.from(0).to(-20)
    end
  end

  describe '#date' do
    it 'returns the date for a transaction' do
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end

  describe '#statement_string' do
    it 'returns string with date, amount and type of transaction' do
      date = Time.now.strftime("%d/%m/%Y")
      expect(transaction.statement_string(date, "", 20, 20)).to eq("#{date} |  | 20 | 20\n")
    end
  end

  describe '#update_statement' do
    it 'updates statement class with the string' do
      string = "23/01/2017 |  | 20 | 20\n"
      expect(transaction.update_statement(string)).to eq(["Date | Credit | Debit | Balance\n", "#{string}"])
    end
  end
end
