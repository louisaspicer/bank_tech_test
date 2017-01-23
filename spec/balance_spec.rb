require './lib/balance.rb'

describe Balance do

  subject(:balance) {described_class.new}

  describe '#initializing' do
    it 'has an initial balance of zero' do
      expect(balance.amount).to eq(0)
    end

  describe '#update balance amount' do
    it 'can update the bank balance' do
      balance.increase_balance(20)
      expect(balance.amount).to eq(20)
    end
  end

  end

end
