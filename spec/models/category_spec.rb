require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validate presence" do
    it { should validate_presence_of(:NameCategory) }    
  end

  context "association" do
    it { should have_many(:products)} 
  end
end
