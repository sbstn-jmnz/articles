require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'A valid instance' do
    before(:each) do
      @user = User.new
      @user.name = 'Some Name'
    end
    it 'is valid with valid attributes' do
      expect(@user).to be_a_new(User)
      expect(@user).to be_valid
    end
  end
end
