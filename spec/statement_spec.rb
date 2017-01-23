require './lib/statement.rb'

describe Statement do

  subject(:statement) {described_class.new}

  describe "#initializing" do
    it "has an initial header string" do
      expect(statement.history).to eq("Date | Credit | Debit | Balance\n")
    end

  end



end
