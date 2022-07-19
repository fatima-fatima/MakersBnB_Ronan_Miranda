require 'space'

describe "all" do
  context "when #all is called" do
    it "returns all spaces" do
      spaces = Space.all

      expect(spaces).to include "Buckingham Palace"
      expect(spaces).to include "Ceasars Palace"
    end
  end
end