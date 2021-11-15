require 'rails_helper'

RSpec.describe 'User', type: :system do
  describe 'Sign Up' do
    it 'allows user to sign up' do
      visit root_path
      click_link 'Sign-up'
      fill_in(:floatingFirstName, with: 'test')
      fill_in(:floatingLastName, with: 'guy')
      fill_in(:floatingEmail, with: 'testguy@example.com')
      fill_in(:floatingPassword, with: 'password123')
      fill_in(:floatingPasswordConfirmation, with: 'password123')
      click_button
      expect(page).to have_content 'Welcome test!'
    end
  end
end

