5.times do
  User.create!(
    email: "#{RandomData.random_word}@#{RandomData.random_word}.com",
    password: "password"
  )
end

50.times do
  Item.create!(
    user: User.all.sample,
    name: "#{RandomData.random_sentence}"
  )
end

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
