require "remembering_names"

describe "#add_name" do
	it "Shows the name that was saved" do
		expect(add_name("Jeff Hurst")).to eq "Jeff Hurst saved"
	end
end
