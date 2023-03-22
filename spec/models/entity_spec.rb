require 'rails_helper'

RSpec.describe Entity, type: :model do
  describe 'the Entity test ' do
    before(:each) do
      @user = User.new(name: 'osama', email: 'osama@gmail.com', password: '123456')
      @group = Group.new(name: 'salem', icon: 'icon of osama', user_id: @user.id)
      @entity = Entity.new(name: 'entity', amount: 6,
                                user_id: @user.id)


    end
    it 'test the entity' do
    expect(@entity).to_not be_valid
    end
    it 'if the name is present' do
      @entity.name = nil
      expect(@entity).to_not be_valid
    end

    it 'if the name is equal the name ' do
      expect(@entity.name).to eql('entity')
    end
  
  
    it 'if the amount is equal the amount' do
      expect(@entity.amount).to eql(6)
    end
  





  end
end