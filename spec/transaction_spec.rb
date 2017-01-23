require './lib/transaction.rb'

describe Transaction do

  subject(:transaction) {described_class.new(balance_klass)}
  let(:balance_klass) {double :balance_klass, new: balance}
  let(:balance) {double :balance, amount: 0}

  describe '#initializing' do
    it 'takes a balance class' do
      expect(transaction.balance).to eq(balance)
    end
  end

  describe '#deposit' do
    it 'increases the balance amount' do
      transaction.deposit(20)
      expect(transaction.balance.amount).to eq(20)
    end
  end
end
