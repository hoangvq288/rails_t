require 'rails_helper'

RSpec.describe Book, type: :model do
  
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:author) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'columns' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:author).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime)}
  end

end
