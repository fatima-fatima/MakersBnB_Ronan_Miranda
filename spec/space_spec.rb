require 'space'

describe Space do
  context "when #all is called" do
    it "returns all spaces" do
      Space.create("Buckingham Palace", "Queens Drive", 250)
      Space.create("Ceasars Palace", "Las Vegas", 100)
      
      spaces = Space.all
      
      expect(spaces).to include "Buckingham Palace"
      expect(spaces).to include "Ceasars Palace"
    end
  end

  context "when #create is called" do
    it "adds a space to the db" do
      new_space = Space.create("Pizza Hut", "Pepperoni Street", 15)
      expect(Space.all).to include "Pizza Hut"
    end
  end
end