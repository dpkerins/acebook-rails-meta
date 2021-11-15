require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Post', type: :system do
  describe 'New Post' do
    it 'allows user to create a new post' do
      login
      visit root_path
      click_link 'New Post'
      fill_in(:post_content, with: 'This is a test post!')
      attach_file('post_image', Rails.root + 'spec/test_image.png')
      click_button
      expect(page).to have_content 'Post was successfully created.'
    end
  end
end

