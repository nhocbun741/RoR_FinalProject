require 'rails_helper'

RSpec.describe OrderStatus, type: :model do
  context "association" do
    it { should have_many(:orders) } 
  end
end
