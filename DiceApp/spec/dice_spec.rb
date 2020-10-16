require "dice"

describe Dice do
	describe "#roll" do
		it "expects Dice to respond to roll method" do
			expect(subject).to respond_to :roll
		end
		it "returns a number between 1 and 6" do
			expect(subject.roll).to be_between(1,6)
		end
		it "checks that rand is used to get a number" do
			allow(subject).to receive(:rand).and_return(3)
			expect(subject.roll).to eq 3
		end
	end
end
