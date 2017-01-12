require 'spec_helper'

require 'pry'

describe 'account creation' do
    it 'allows user to create account' do
        visit root_path
        click_link "Create Account"

        fill_in 'name[name]', with: 'Austin'
        fill_in 'email[email]', with: "austin@dringo.io"
        fill_in "password[password]", with: "password"
        fill_in "password_confirmation[password_confirmation]", with: "password"
        binding.pry
        fill_in "Subdomain", with: "test_subdomain"
        click_button "Create Account"

        expect(page).to have_content('Signed up successfully')
    end
end
