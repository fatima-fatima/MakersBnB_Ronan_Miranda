feature 'Check for form on new listing page  do' do
    scenario 'a user visits the listing page' do
        visit('/add-listing')
        expect(page).to have_button 'Submit'
    end
end