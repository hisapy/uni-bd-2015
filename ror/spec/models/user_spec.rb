require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'DB Columns' do
    it { should have_db_column(:first_name).of_type(:string) }
    it { should have_db_column(:last_name).of_type(:string) }
    it { should have_db_column(:age).of_type(:integer) }
    it { should have_db_column(:email).of_type(:string) }
    it { should have_db_index(:email).unique }
    it { should have_db_column(:github_url).of_type(:string) }
    it { should have_db_index(:github_url).unique }
    it { should have_db_column(:username).of_type(:string) }
    it { should have_db_index(:username).unique }
  end
  
  describe 'Validations' do
    it { should validate_length_of(:first_name).is_at_least(2).is_at_most(45) }
    it { should validate_length_of(:last_name).is_at_least(2).is_at_most(45) }
    it { should validate_length_of(:username).is_at_least(4).is_at_most(24) }
  end
end
