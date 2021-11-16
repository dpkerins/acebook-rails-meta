require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Comment', type: :system do
  describe 'New Comment' do
    context 'when logged in' do
      before(:each) do
        login
        create_post_with_img
        visit root_path
        create_comment
      end
      it 'allows user to create a new comment' do
        expect(page).to have_content 'Comment was successfully created.'
        expect(page).to have_content 'This is a test comment'
      end

      it 'displays error message if no text added' do
        expect(page).to have_content 'Invalid context'
      end
    end

    context 'when logged out' do
      it 'should not allow user to add a comment if not logged in' do
        expect(page).not_to have_link 'Add Comment'
      end
    end
  end
end
