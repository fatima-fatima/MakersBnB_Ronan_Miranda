feature 'Check for user input' do
    scenario 'after a logs in' do
        visit('/login')
        fill_in 'Email Address', with: 'testemail@example.com'
        fill_in 'Password', with: 'testpword'
        expect(page).to have_button "Login"
    end
end