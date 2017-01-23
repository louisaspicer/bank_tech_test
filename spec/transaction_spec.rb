require './lib/transaction.rb'

describe Transaction do

  # balance_klass = class_double("Balance", new: balance)
  # balance = instance_double("Balance", :amount => 0)
  subject(:transaction) {described_class.new(balance_klass.new)}
  let(:balance_klass) {double :balance_klass, new: balance}
  let(:balance) {double :balance, amount: 0}

  describe '#initializing' do
    it 'knows the balance' do
      expect(transaction.balance_amount).to eq(balance.amount)
    end
  end

  describe '#deposit' do
    it 'increases the balance amount' do
      expect{transaction.deposit(20)}.to change{transaction.balance_amount}.from(0).to(20)
    end
  end
end
