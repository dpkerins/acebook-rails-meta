require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Post', type: :system do
  describe 'New Post' do
    it 'allows user to create a new post' do
      login
      create_post_with_img

      expect(page).to have_content 'Post was successfully created.'
    end

    context 'when picture is added to post' do
      it 'allows no text to be added' do
        login
        click_link 'New Post'
        attach_file('post_image', Rails.root + 'spec/test_image.png')
        click_button

        expect(page).to_not have_content 'cannot be empty'
        expect(page).to have_content 'Post was successfully created.'
      end
    end

    context 'when not picture is added to post' do
      xit 'displays error message if no text added' do
        login
        click_link 'New Post'
        click_button

        expect(page).to have_content 'cannot be empty'
      end
    end

  end
end
