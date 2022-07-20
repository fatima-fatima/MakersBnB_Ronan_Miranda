require 'space'

describe Space do
  context "when #all is called" do
    it "returns all spaces" do
      Space.create("Buckingham Palace", "Queens Drive", 250)
      Space.create("Ceasars Palace", "Las Vegas", 100)
      
      spaces = Space.all
      
      expect(spaces[-2]['name']).to include "Buckingham Palace"
      expect(spaces[-1]['name']).to include "Ceasars Palace"
    end
  end

  context "when #create is called" do
    it "adds a space to the db" do
      new_space = Space.create("Pizza Hut", "Pepperoni Street", 15)
      expect(Space.all[-1]['name']).to include "Pizza Hut"
    end
  end
end