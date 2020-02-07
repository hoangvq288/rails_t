require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should not be valid without any thing' do
    expect(User.new()).to_not be_valid
  end
end
