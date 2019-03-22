require 'rails_helper'

RSpec.describe Supplier, type: :model do
  context "validate presence" do
    it { should validate_presence_of(:SupplierName) }    
  end

  context "association" do
    it { should have_many(:products) } 
  end
  
end
