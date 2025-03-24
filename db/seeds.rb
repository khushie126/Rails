
require 'faker'

customer_count = 5
customer_count.times do |count|
  Customer.find_or_create_by(first_name: "customer_#{count}") do |customer|
    customer.last_name = Faker::Name.last_name
    customer.title = Faker::Name.prefix
    customer.email = Faker::Internet.email
    customer.visits = Faker::Number.between(from: 1, to: 100)
    customer.orders_count = Faker::Number.between(from: 1, to: 10)
    customer.lock_version = 1
  end
end

10.times do
  Order.find_or_create_by(customer_id: Customer.all.sample.id) do |order|
    order.subtotal = Faker::Number.between(from: 100, to: 500)
    order.date_submitted = Faker::Time.backward(days: 30)
    order.status = ['shipped', 'being_packed', 'complete', 'cancelled'].sample
    order.shipping = Faker::Commerce.price(range: 5..50)
    order.tax = Faker::Commerce.price(range: 1..20)
  end
end


authors = 5
authors.times do |author|
  Author.find_or_create_by(first_name: "author_#{author}") do |author_record|
  author_record.last_name = Faker::Name.last_name
  author_record.title = Faker::Book.author
end
end

suppliers= 5
suppliers.times do |supplier|
  Supplier.find_or_create_by(
    name: "supplier_#{supplier}"
  )
end

books = 5
books.times do |book|
  Book.find_or_create_by(title: "Book_#{book}") do |book_record|
  book_record.price = Faker::Commerce.price(range: 5..100.0)
  book_record.year_published = Faker::Number.between(from: 1900, to: 2025)
  book_record.out_of_print = Faker::Boolean.boolean
  book_record.supplier_id = Supplier.all.sample.id
  book_record.author_id = Author.all.sample.id
end
end

reviews = 5
reviews.times do |review|
  Review.find_or_create_by(title: "Review_#{review}") do |review_record|
    review_record.body = Faker::Company.catch_phrase
    review_record.rating = Faker::Number.between(from: 1, to: 5)
    review_record.state = [:not_reviewed, :published, :hidden].sample
    review_record.customer_id = Customer.all.sample.id
    review_record.book_id = Book.all.sample.id
  end
end