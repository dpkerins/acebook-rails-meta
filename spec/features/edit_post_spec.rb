require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Post', type: :system do
  describe 'Edit post' do
    it 'allows user to edit post content' do
      login
      create_post_with_img
      click_link 'metabook'
      create_comment
      visit '/posts/1/edit'
      fill_in(:post_content, with: 'This is my changed post content!')
      click_button
      expect(page).to have_content 'This is my changed post content!'
      expect(page).to have_content 'Post was successfully updated.'
    end
  end
end

