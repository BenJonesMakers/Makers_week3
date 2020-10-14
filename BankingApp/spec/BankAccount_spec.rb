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

	describe "#withdraw" do
		it "responds to requests" do
			expect(subject).to respond_to(:withdraw)
		end
		it "accepts a value" do
			expect(subject.withdraw(10)).to eq -10
		end
	end

	describe "#view_balance" do
		it "responds to requests" do
			expect(subject).to respond_to(:view_balance)
		end
		it "returns current balance when new" do
			expect(subject.view_balance).to eq 0
		end
		it "returns current balance after deposit" do
			subject.deposit(10)
			expect(subject.view_balance).to eq 10
		end
	end
end
