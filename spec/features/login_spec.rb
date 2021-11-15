require 'rails_helper'

RSpec.describe 'User', type: :system do
  describe 'Login' do
    it 'allows user to log in' do
      visit root_path
      click_link 'Login'
      fill_in(:exampleInputEmail1, with: 'm@p.com')
      fill_in(:exampleInputPassword1, with: '12345678')
      click_button
      expect(page).to have_content 'Welcome Mary!'
    end
  end
end

