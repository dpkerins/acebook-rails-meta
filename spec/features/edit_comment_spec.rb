require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Comment', type: :system do
  describe 'Edit Comment' do
    it 'allows user to edit comment content' do
      login
      create_post_with_img
      click_link 'metabook'
      create_comment
      visit '/comments/1/edit'
      fill_in(:comment_content, with: 'This is my changed comment content!')
      click_button
      expect(page).to have_content 'This is my changed comment content!'
      expect(page).to have_content 'Comment was successfully updated.'
    end
  end
end

