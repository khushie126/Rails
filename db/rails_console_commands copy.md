# 341: Book.where("author_id > 2").order(:year_published).reverse_order
# 340: Book.where("author_id > 10").order(:year_published).reverse_order
# 339: Customer.joins(:orders).merge(Order.created_in_time_range(time_range)).distinct
# 338: time_range = (Time.now.midnight - 1.day)..Time.now.midnight
# 337: Book.joins(reviews: :customer)
# 336: Book.joins(reviews: :cutomer)
# 335: Book.joins(:author ,:reviews)
# 334: Book.joins(:author .:reviews)
# 333: Book.joins(:reviews)
# 332: Author.joins("INNER JOIN books ON books.author_id = authors.id AND books.out_of_print = FALSE")
# 331: Book.transaction do
#        book = Book.lock.first
#      ...
# 330: c1.first_name = "khushi"
# 329: Customer.readonly.first
# 328: customer.save
# 327: Customer.save
# 326: customer.visits +=1
# 325: customer=Customer.readonly.first
# 324: Customer.readonly.first
# 323: Book.none
# 322: Book.group(:author).regroup(:id)
# 321: Book.where(out_of_print: true).rewhere(out_of_print: false)
# 320: irb_history
# 319: Customer.select(:first_name).map &:name
# 318: Book.select("books.id , books.title, authors.first_name").joins(:author).find_by(title: "Book_1")
# 317: Order.not_shipped
# 316: Order.shipped
# 315: Book.where('price >50')
# 314: Book.in_print
# 313: Book.in_print.merge(Book.out_of_print)
# 312: Book.in_print.where(price: ...100)
# 311: Book.out_of_print.old
# 310: books.each do |book|
#        puts book.author.last_name
# :
# ...
# 309: books =Book.includes(:author).limit(2)
# 308: books =Book.incldes(;author).limit(10)
# 307: Customer.where.missing(:reviews)
# 306: Customer.where.associated(:reviews)
# 305: Review.all
# 304: reviews.all
# 303: Customer.left_outer_joins(:reviews).distinct.select("customers.*, COUNT(reviews.*) AS reviews_count").group("customers.id")
# 302: Customer.left_outer_joins(:reviews).distinct.select("customers.*, COUNT(reviews.*) AS reviews_count").group("customer.id")
# 301: Customer.left_outer_joins(:reviews).distinct.select("customers.*,COUNT(reviews.*) AS reviews_count").group("customer.id")
# 300: Customer.left_outer_joins(:reviews).distinct.select("customers.*,COUNT(reviews.*) AS reviews_count").group("customer.id")
# 299: Customer.left_outer_joins(:reviews).disctinct.select("customers.*,COUNT(reviews.*) AS reviews_count").group("customer.id")
# 298: Customer.left_outer_joins(:reviews).disctincts.select("customers.*,COUNT(reviews.*) AS reviews_count").group("customer.id")
# 297: time_range = (Time.now.midnight - 1.day)..Time.now.midnight
#      Customer.joins(:orders).where("orders.created_at" => time_range).distinct
#      ...
# :
# 295: Customer.where(first_name: "Customer_1").or(Customer.where.(orders_count: [1,3,5])
# 293: Author.find(2).books
# 292: Author.find(10).books
# 291:    Book.where("id > 2").limit(3).order("id desc").only(:order, :where)
# 290:  Book.where("id >  4").limit(3).order("id desc").only(:order, :where)
# 289:     Book.where("id >  4").limit(3).order("id desc").only(:order, :where)
# 288: Book.where(id: 10, out_of_print: false).unscope(where: :id)
# 287: Book.select("created_at as ordered_date, SUM(price) as total").group("created_at").having("SUM(price) > ?",70)
# 286: Book.select("created_at as ordered_date, price as total").group("created_at").having("price > ?",70)
# 285: Order.group(:status).count
# 284: Order.select("created_at").group("created_at")
# 283: Customer.limit(2).offset(4)
# 282: Customer.limit(2).offset(5)
# 281: Customer.limit(2)
# 280: Customer.select(:last_name).distinct
# 279: Book.select(:isbn, :out_of_print)
# 278: Book.includes(:author).order(books: {year_published: :desc}, authors: {first_name: :asc})
# 270: Customer.where(orders_count: [1,3,5])
# 269: Customer.where(order_count: [1,3,5])
# 268: Book.where(author_id: 1, id: 2)
#      Book.where(author_id: 3, id: 2)
# 267: Book.all
# 266: Book.where(author_id: 1, id: 2)
#      Book.where(author_id: 1, id: 2)
# 265: Book.where([:author_id, :id]=>[1,2])
# 264: Book.where([author, :id]=>[1,2])
# 263: Book.where([author_id, :id]=>[1,2])
# 262: Author.joins(:books).where(books: {author: author})
# 261: Book.where(author: author)
# 260: author = Author.find(2)
# 259: Book.where(author: author)
# 258: author= Author.first
# 257: Book.where(out_of_print: true)
# 256: Book.where("title LIKE ?", params[:title] + "%")
#      Book.where("title LIKE ?",params[:title] + "_")
# 255: Book.where("title = ? ", params[:title])
# 254:  Book.where("title = ? AND out_of_print = ?", params[:title], false)
# 253: params = { title: "Book_1" }
# 252: Book.where("title = ?", params[:title])
#      params = { title: "The Great Gatsby" }
# 251: Book.where("title = ?", params[:title])
#      Book.1
# 250: Review.count
# 249: Book.count
# 248: Order.count
# 247: Order.all
# 246: Customer.count
# 245: Order.count
# 244: Order.all
# 243: Order.all
# 242: Customer.ids
# 241: Order.ids
# 240: Customer.ids
# 239: Customer.id
# 238: customer = Customer.find(10)


