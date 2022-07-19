feature 'Check for form on new listing page  do' do
    scenario 'a user visits the listing page' do
        visit('/add-listing')
        expect(page).to have_button 'Submit'
    end
    scenario 'the form posts to the listing page' do
        visit('/add-listing')
        click_button("Submit")
        expect(page).to have_content "testing the view listing page"
    end
end
