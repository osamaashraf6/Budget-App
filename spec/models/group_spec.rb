require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Add the test for the group model' do
    before(:each) do
      @user = User.new(name: 'osama', email: 'osama@gmail.com', password: '123456')
      @group = Group.new(name: 'salem', icon: 'icon of osama', user_id: @user.id)
    end
    it 'test the group' do
    expect(@group).to_not be_valid
    end
    it 'if the name is present' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'if the name is equal the name ' do
      expect(@group.name).to eql('salem')
    end
  
    it 'if the icon is equal the icon' do
      expect(@group.icon).to eql('icon of osama')
    end
  

  end
end