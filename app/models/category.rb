class Category < ApplicationRecord
    validates :NameCategory, presence: true
    has_many :products  
end