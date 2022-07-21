feature 'Check for user input' do
    scenario 'after a user signs up' do
        visit('/')
        fill_in 'User Name', with: 'Test Name'
        fill_in 'Email Address', with: 'testemail@example.com'
        fill_in 'Password', with: 'testpword'
        click_button("Sign Up")
        expect(page).to have_xpath('/html/body/form/input[4]')
    end
end
