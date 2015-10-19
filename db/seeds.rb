require 'faker'

5.times do
  Task.create(description: Faker::Company.catch_phrase)
end