require 'rails_helper'

RSpec.describe 'group index', type: :feature do
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
    visit group_path(@group.id)
  end
  describe 'test view group show' do
    it 'spec show ' do
      expect(page).to have_content 'Transactions'
      expect(page).to have_content 'Hello'

      # expect(page).to have_content 'Entity'
      expect(page).to have_content 'New transaction'
    end

    it 'total amount entity' do
      expect(page).to have_content(@entity.amount)
    end
  end
end
