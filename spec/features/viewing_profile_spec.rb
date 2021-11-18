require 'rails_helper'
require 'web_helpers'

RSpec.describe 'User', type: :system do
  describe 'viewing profile page' do
    before(:each) do
      login
      create_post_with_img
      visit root_path
      create_comment
    end
    it 'allows user to view their profile page' do
      find("#dropdownUser1").click
      click_link "Profile"
      expect(page).to have_content 'Mary'
      expect(page).to have_content 'm@p.com'
      expect(page).to have_content 'Recent posts'
      expect(page).to have_content 'This is a test post!'
      expect(page).to have_content 'Recent comments'
      expect(page).to have_content 'This is a test comment'
    end
  end
end

