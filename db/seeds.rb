Duck.destroy_all
Student.destroy_all

5.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

20.times do
  Duck.create(name: Faker::Creature::Dog.name, description: Faker::Creature::Dog.breed, student: Student.all.sample )
end
