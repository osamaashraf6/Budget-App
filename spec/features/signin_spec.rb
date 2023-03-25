require 'rails_helper'

RSpec.describe 'Login page', type: :feature do
  before(:each) do
    User.create(name: 'osama', email: 'osama@gmail.com', password: '654321')
    visit user_session_path
  end
  describe 'tests for view login' do
    it 'username and password and submit.' do
      expect(page).to have_field(type: 'email')
      expect(page).to have_field(type: 'password')
      expect(page).to have_button(type: 'submit')
    end

    it 'sign me in' do
      visit new_user_session_path
      fill_in 'Email', with: 'osama@gmail.com'
      fill_in 'Password', with: '654321'
      click_button 'Log in'
      visit groups_path
      expect(page).to have_content 'groups'
    end

    it ' wrong data, redirect to the sign in' do
      visit new_user_session_path
      fill_in 'Email', with: 'try@email.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      expect(current_path).to eq '/users/sign_in'
    end
  end
end
