require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Comment', type: :system do
  describe 'Edit Comment' do
    it 'allows user to edit post content' do
      login
      visit '/posts/9/edit'
      fill_in(:post_content, with: 'This is my changed post content!')
      click_button
      expect(page).to have_content 'This is my changed post content!'
    end
  end
  describe 'Edit Comment' do
    it 'allows user to edit post image' do
      login
      visit '/posts/9/edit'
      attach_file('post_image', Rails.root + 'spec/test_image.png')
      click_button
      expect(page).to have_content 'This is my changed post content!'
    end
  end
end

