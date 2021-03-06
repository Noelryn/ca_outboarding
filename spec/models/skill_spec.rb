require 'rails_helper'

RSpec.describe Skill, type: :model do
  describe 'Database' do
    describe 'table' do
      it { is_expected.to have_db_column :proficiency }
      it { is_expected.to have_db_column :name }
      it { is_expected.to have_db_column :of_type }
    end

    describe 'associations' do
      it { is_expected.to belong_to :user}
    end
  end

  describe 'Factory' do
    it 'for :tech is valid' do
      expect(create(:repo)).to be_valid
    end

    it 'for :soft is valid' do
      expect(create(:website)).to be_valid
    end
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :proficiency }
    it { is_expected.to validate_presence_of :of_type }
    it { is_expected.to validate_presence_of :name }
  end
end
