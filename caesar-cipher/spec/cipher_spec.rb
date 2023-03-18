require './lib/cipher.rb'

describe "#a" do
	it "works with a string of the alphabet with spaces and grammar" do
		expect(caesar_cipher("abcde fghijklmno...pqrst'uvwxy,_z", 1)).to eql("bcdef ghijklmnop...qrstu'vwxyz,_a")
	end
end