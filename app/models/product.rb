class Product < ApplicationRecord
    validates :ProductID,
              :WeightMeasure,
              :Description,
              :ProductPicUrl,
              :Price,
              :Width,
              :Depth,
              :Height,
              :DimUnit,
              :Name,
              presence: true

    extend Enumerize
    enumerize :Status, in: [:Available, :Unavailable], default: :Available     
    enumerize :CurrencyCode, in: [:EUR, :USD, :CNY, :AUD, :HKD, :KOR]
    enumerize :WeightUnit, in: [:G, :KG]
    enumerize :DimUnit, in: [:mm, :cm, :dm, :m]

    belongs_to :category
    belongs_to :supplier
    has_many :order_items

    default_scope { where(active: true) }
end