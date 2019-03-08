class Supplier < ApplicationRecord
    validates :SupplierName, presence: true
    has_many :products
end