require 'user'

RSpec.describe User do
    context "when a user signs up" do
        it "#all returns their name and email address," do
           User.create("Ronan", "useremail@gmail.com", "password1")
            expect(User.all).to include "Ronan"
        end
    end
end


