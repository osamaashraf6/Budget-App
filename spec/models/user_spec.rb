require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Add the test for the user model class' do
  
    subject {   User.new(name: 'osama', email: 'osama@gmail.com', password: '123456') }
    before { subject.save }
  
    it 'if the name is equal the name' do
      expect(subject.name).to eql('osama')
    end
  
    it 'if the name is present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  
    it 'if the email is equal the email' do
      expect(subject.email).to eql('osama@gmail.com')
    end
  
    it 'if the email is not absent' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end