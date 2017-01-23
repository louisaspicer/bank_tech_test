require './lib/balance.rb'

describe Balance do

  subject(:balance) {described_class.new}

  describe '#initializing' do
    it 'has an initial balance of zero' do
      expect(balance.amount).to eq(0)
    end

  describe '#increase_amount' do
    it 'can update the bank balance' do
      balance.increase_balance(20)
      expect(balance.amount).to eq(20)
    end
  end

  describe '#decrease_amount' do
    context 'when there is a greater balance amount than requested' do
      it 'can update the bank balance' do
        balance.increase_balance(40)
        balance.decrease_balance(20)
        expect(balance.amount).to eq(20)
      end
    end

    context 'when there is a lesser balance amount than requested' do
      it 'can update the bank balance to a negative amount' do
        balance.decrease_balance(20)
        expect(balance.amount).to eq(-20)
      end
    end


  end

  end

end
