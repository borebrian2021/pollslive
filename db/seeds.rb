puts "🌱 Seedie seeding seeds..."

10.times do
    Party.create(
    party_name: Faker::Book.title,
    candidate_name: Faker::Book.author,
    profile_image: Faker::Book.genre,
    string: Faker::Book.publisher   
    )
end



puts "✅ Done seeding!"
