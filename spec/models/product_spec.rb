require 'rails_helper'

RSpec.describe Product, type: :model do
  context "validate presence" do
    it { should validate_presence_of(:ProductID) }
    it { should validate_presence_of(:WeightMeasure) }
    it { should validate_presence_of(:Description) }
    # it { should validate_presence_of(:ProductPicUrl) }
    it { should validate_presence_of(:Price) }
    it { should validate_presence_of(:Width) }
    it { should validate_presence_of(:Depth) }
    it { should validate_presence_of(:Height) }
    it { should validate_presence_of(:DimUnit) }
    it { should validate_presence_of(:Name) }
  end

  context "Association" do
    it {should belong_to(:category)}
    it {should belong_to(:supplier)}
    it {should have_many(:order_items)}
  end

  context "logic method" do
    let!(:product){create(:product)}
    it "default scope active true" do
      expect(product.active).to eq(true)  
    end

    it "default status avaible" do
      expect(product.Status).to eq("Available")  
    end

    it "default WeightUnit KG" do
      expect(product.WeightUnit).to eq("KG")  
    end

    it "default quantity = 0" do
      expect(product.Quantity).to eq(0)  
    end

    it "default CurrencyCode is EUR" do
      expect(product.CurrencyCode).to eq("EUR")  
    end

  end
end
