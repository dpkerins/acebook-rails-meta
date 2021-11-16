require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Post', type: :system do
  describe 'New Post' do
    context 'when logged in' do
      it 'allows user to create a new post' do
        login
        visit root_path
        create_post_with_img
        expect(page).to have_content 'Post was successfully created.'
      end
    end
    context 'when not logged in' do
      it 'should not allow a user to add a new post if not logged in' do
        visit root_path
        click_link 'New Post'
        expect(page).to have_content 'Create your account'
        expect(page).not_to have_content 'New Post'
      end
    end
  end
end

