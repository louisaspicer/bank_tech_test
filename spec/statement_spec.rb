require './lib/statement.rb'

describe Statement do

  subject(:statement) {described_class.new(Date.today, "", 20, 20)}

  describe "#initializing" do
    it "has a date attribute" do
      expect(statement.date).to eq(Date.today)
    end
  end



end
