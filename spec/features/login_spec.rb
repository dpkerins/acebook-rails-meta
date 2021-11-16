require 'rails_helper'
require 'web_helpers'

RSpec.describe 'User', type: :system do
  describe 'Login' do
    it 'allows user to log in' do
      login
      expect(page).to have_content 'Welcome Mary!'
    end
  end
end
