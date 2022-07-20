feature 'Check for form on new listing page  do' do
    scenario 'a user visits the listing page' do
        visit('/add-listing')
        expect(page).to have_button 'Submit'
    end
    xscenario 'the form posts to the listing page' do
        visit('/add-listing')
        fill_in 'Name', with: 'Ronan'
        fill_in 'Address', with: '10 Downing Street'
        fill_in 'Price', with: 150
        fill_in 'Start date:', with: '2022/07/19'
        fill_in 'End date:', with: '2022/07/26'
        click_button("Submit")
        expect(page).to have_content "Ronan 10 Downing Street £150 2022/07/19 2022/07/26"
    end
end
