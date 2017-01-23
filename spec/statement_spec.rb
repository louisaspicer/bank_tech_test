require './lib/statement.rb'

describe Statement do

  subject(:statement) {described_class.new(Date.today, "", 20, 20)}

  describe "#initializing" do
    it "has a date attribute" do
      expect(statement.date).to eq(Date.today)
    end

    it "has a credit attribute" do
      expect(statement.credit).to eq("")
    end

    it "has a debit attribute" do
      expect(statement.debit).to eq(20)
    end

    it "has a balance attribute" do
      expect(statement.balance).to eq(20)
    end
  end



end
