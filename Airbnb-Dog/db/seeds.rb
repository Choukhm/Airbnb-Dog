require 'faker'

5.times do
  c = Faker::Address.city
  City.create(name: c)
end

20.times do
  DogSitter.create(name: Faker::Name.name, city: City.all.sample)
end

30.times do
  Dog.create(name: Faker::Dog.name, city: City.all.sample)
end

#creating strolls of half an hour

50.times do
  start = Faker::Time.between(Date.today,10.days.ago, :day)
  puts start
  finish = start + 30.minutes 
  puts finish
  Stroll.create(start_date: start, end_date:finish, dog: Dog.all.sample, dog_sitter: DogSitter.all.sample)
end

