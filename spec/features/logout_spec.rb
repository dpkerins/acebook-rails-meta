require 'rails_helper'
require 'web_helpers'

RSpec.describe 'User', type: :system do
  describe 'Logout' do
    it 'user to log out' do
      login
      click_link 'Log out'

      expect(page).to_not have_content 'Welcome Mary!'
      expect(page).to have_link('Login')
      expect(page).to_not have_link('Log out')
    end
  end
end
