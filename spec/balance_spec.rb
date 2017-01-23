require './lib/balance.rb'

describe Balance do

  subject(:balance) {described_class.new}

  describe '#initializing' do
    it 'has an initial balance of zero' do
      expect(balance.amount).to eq(0)
    end

  end

end
