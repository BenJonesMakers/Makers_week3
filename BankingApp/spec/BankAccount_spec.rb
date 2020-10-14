require "BankAccount"

describe BankAccount do
	describe "#deposit" do
		it "responds to requests" do
			expect(subject).to respond_to(:deposit)
		end
		it "accepts a value" do
			expect(subject.deposit(10)).to eq 10
		end
		it "adds amount to balance" do
			subject.deposit(10)
			expect(subject.balance).to eq 10
		end
	end
end
