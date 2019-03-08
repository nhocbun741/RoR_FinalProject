# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Category.destroy_all
Supplier.destroy_all

ActiveRecord::Base.connection.execute(
    'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'products\''
)

ActiveRecord::Base.connection.execute(
    'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'categories\''
)

ActiveRecord::Base.connection.execute(
    'UPDATE SQLITE_SEQUENCE SET seq = 0 WHERE name = \'suppliers\''
)

### get api categories
url1 = 'http://localhost:5000/api/getCategories'
uri1 = URI(url1)
response1 = Net::HTTP.get(uri1)

parsed1 = ActiveSupport::JSON.decode(response1)
parsed1.each do |data|
    Category.create!(NameCategory: data['CategoryName'])
end


### get api suppliers
url2 = 'http://localhost:5000/api/getSuppliers'
uri2 = URI(url2)
response2 = Net::HTTP.get(uri2)

parsed2 = ActiveSupport::JSON.decode(response2)
parsed2.each do |data|
    Supplier.create!(SupplierName: data['SupplierName'])
end


### get api products
url3 = 'http://localhost:5000/api/getProducts'
uri3 = URI(url3)
response3 = Net::HTTP.get(uri3)

parsed3 = ActiveSupport::JSON.decode(response3)
parsed3.each do |data|
    Product.create!(ProductID: data['ProductId'],
                    category_id: data['CategoryId'], 
                    supplier_id: data['SupplierId'],
                    WeightMeasure: data['WeightMeasure'],
                    WeightUnit: data['WeightUnit'],
                    Description: data['Description'],
                    DateOfSale: data['DateOfSale'],
                    ProductPicUrl: data['ProductPicUrl'],
                    Status: data['Status'],
                    Quantity: data['Quantity'],
                    UoM: data['UoM'],
                    CurrencyCode: data['CurrencyCode'],
                    Price: data['Price'],
                    Width: data['Width'],
                    Depth: data['Depth'],
                    Height: data['Height'],
                    DimUnit: data['DimUnit'],
                    Name: data['Name']
                    )
end