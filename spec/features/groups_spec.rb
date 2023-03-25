require 'rails_helper'

RSpec.describe 'group index page', type: :feature do
  before(:each) do
    @user = User.create(name: 'osama', email: 'osama@gmail.com', password: '654321')
    @group = Group.create(name: 'hello', icon: 'icon',
                                user_id: @user.id)
    @entity = Entity.create(name: 'entity', amount: 4,
                              user_id: @user.id, group_id: @group.id)
    visit new_user_session_path
    fill_in 'Email', with: 'osama@gmail.com'
    fill_in 'Password', with: '654321'
    click_button 'Log in'
    visit groups_path
  end
  # =================================================================

  describe 'tests for view groups#index' do
    it 'groups title' do
      expect(page).to have_content 'groups'
    end

it 'should display the category name' do
  expect(page).to have_content('Hello')
end
it 'should display the category name' do
  expect(page).to have_content('New group')
end

it 'should display a new category button' do
  expect(page).to have_content(@entity.amount)
end
  end
end