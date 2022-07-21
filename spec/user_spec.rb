require 'user'

RSpec.describe User do
    context "when a user signs up" do
        it "#all returns their name and email address," do
           User.create("Ronan", "useremail@gmail.com", "password1")
            expect(User.all).to include "Ronan"
        end
    end

    xcontext "if username and password exist" do
        it "#login returns true" do
            user = User.new('username', 'password')
            expect(user.login?).to eq true
        end
    end

    context "if username and password exist" do
        it "#login returns true" do
            User.create("Ronan2", "useremail2@gmail.com", "password2")
            expect(User.login?("Ronan2", "useremail2@gmail.com", "password2")).to eq true
        end
    end

    context "if username and password do not both exist" do
        it "#login returns false" do
            User.create("Ronan2", "useremail2@gmail.com", "password2")
            expect(User.login?("Ronan2", "useremail2@gmail.com", "testpword")).to eq false
        end
    end
end
