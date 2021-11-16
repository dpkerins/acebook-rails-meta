require 'rails_helper'
require 'web_helpers'

RSpec.describe 'Post', type: :system do
  describe 'Liking a Post' do
    before(:each) do
      login
      create_post_with_img
      visit root_path
      create_comment
    end

    context 'when logged in' do
      
    end

    context 'when not logged in' do
      before(:each) do
        visit root_path
        click_link 'Log out'
      end
      
      it 'should not allow a user to like a post if not logged in' do
        visit root_path
        find("a", :text => "like", match: :first).click
        expect(page).to have_content 'Create your account'
        expect(page).not_to have_content 'Like was successfully updated.'
      end
    end
  end
end

