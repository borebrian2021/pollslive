puts "🌱 Seedie seeding seeds..."

50.times do
    Book.create(
     title: Faker::Book.title,
     author: Faker::Book.author,
     genre: Faker::Book.genre,
     publisher: Faker::Book.publisher   
    )
end

50.times do 
    Purchase.create(
        purchase_title: Faker::Book.title,
        customer_id: rand(1..20),
        book_id: rand(1..20)
    )
end

50.times do
    Genre.create(
        fiction: Faker::Book.genre,
        romance: Faker::Book.genre,
        horror: Faker::Book.genre,
        sci_fi: Faker::Book.genre
    )
end

20.times do
    Customers.create(
        name: Faker::Name.unique.name_with_middle
    )
end


puts "✅ Done seeding!"
