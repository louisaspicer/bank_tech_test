require './lib/controller/transaction.rb'

describe Transaction do

  subject(:transaction) {described_class.new(balance_klass, statement_klass)}

  let(:balance_klass) {double :balance_klass, new: balance}
  let(:balance) {double :balance, amount: 0}

  let(:statement_klass) {double :statement_klass, new: statement}
  let(:statement) {double :statement}

  describe '#initializing' do
    it 'takes in the balance' do
      expect(transaction.balance).to eq(balance.amount)
    end

    it 'takes in the statement' do
      expect(transaction.statement).to eq(statement_klass)
    end
  end

  describe '#deposit' do
    it 'increases the balance amount' do
      expect{transaction.deposit(20)}.to change{transaction.balance}.from(0).to(20)
    end

    it 'pushes statement object to statement history array' do
      expect(transaction.deposit(20)).to eq([statement])
    end

  end

  describe '#withdraw' do
    it 'decrease the balance amount' do
      expect{transaction.withdraw(20)}.to change{transaction.balance}.from(0).to(-20)
    end

    it 'pushes statement object to statement history array' do
      expect(transaction.withdraw(20)).to eq([statement])
    end
  end




end
