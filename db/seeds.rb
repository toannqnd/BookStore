# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create!(name:                "Dế mèn phiêu lưu ký",
             url:                 "http://vnaudiobook.com/Upload/Book/Avatar/De-men-phieu-luu-kyCGSIE.jpg",
             price:               "18.7",
             author_id:           "1",
             categories_id:       "1")

Book.create!(name:                "Cát bụi chân ai",
             url:                 "http://farm6.staticflickr.com/5476/12603504095_7a1df1b94c_o.jpg",
             price:               "20.3",
             author_id:           "1",
             categories_id:       "1")

Author.create!(name:              "Tô Hoài",
               email:             "tohoai@yahoo.com")

Author.create!(name:              "Nguyễn Du",
               email:             "nguyendu@yahoo.com")

Author.create!(name:              "Nguyễn Trãi",
               email:             "nguyentrai@yahoo.com")

Author.create!(name:              "Đỗ Phủ",
               email:             "dophu@yahoo.com")

Author.create!(name:              "Lý Bach",
               email:             "lybach@yahoo.com")

Category.create!(name:            "Lập trình máy tính")

Category.create!(name:            "Đồ hoạ máy tính")

Category.create!(name:            "Ngoại ngữ")

Category.create!(name:            "Kinh tế - xã hội")

Category.create!(name:            "Văn học Việt Nam")

10.times do |n|
  name = Faker::Name.title
  url = Faker::Avatar.image
  price = Faker::Bitcoin.rand_in_range(20, 50)
  author_id = "1"
  categories_id = "1"
  Book.create!(name:                name,
               url:                 url,
               price:               price,
               author_id:           author_id,
               categories_id:       categories_id)
end