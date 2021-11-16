require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Comment', type: :system do
  describe 'New Comment' do
    it 'allows user to create a new comment' do
      login
      create_post_with_img
      click_link 'Home'

      click_link 'Add Comment'
      fill_in(:comment_content, with: 'This is a test comment')
      click_button('Comment')

      expect(page).to have_content 'Comment was successfully created.'
      expect(page).to have_content 'This is a test comment'
    end

    it 'displays error message if no text added' do
      login
      create_post_with_img
      click_link 'Home'

      click_link 'Add Comment'
      click_button('Comment')

      expect(page).to have_content 'Invalid context'
    end
  end
end
