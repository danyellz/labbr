require 'faker'

# Users
10.times do
 User.create(
   # first name
   # last name
   email: Faker::Internet.email,
   password: "123456",
   password_confirmation: "123456"
   )
end

# Proposals
10.times do
 Proposal.create(
   title: 'YEAH',
   summary: 'YEAH',
   hypothesis: 'YEAH',
   status: 'YEAH',
   user_id: rand(1..10)
   )
end

# Experiments
10.times do
 Experiment.create(
   title: Faker::Hacker.noun.capitalize + ' ' + Faker::Hacker.verb + ' ' + Faker::Hacker.noun + ' ' + Faker::Hacker.adjective,
   procedures: Faker::Hacker.say_something_smart,
   results: Faker::Hacker.say_something_smart,
   conclusion: Faker::Hacker.say_something_smart,
   proposal_id: rand(1..10),
   user_id: rand(1..10)
   )
end

# # Observations
10.times do
 Observation.create(
   title: Faker::Hacker.noun.capitalize + ' ' + Faker::Hacker.verb + ' ' + Faker::Hacker.noun + ' ' + Faker::Hacker.adjective,
   body: Faker::Hacker.say_something_smart,
   experiment_id: rand(1..10),
   user_id: rand(1..10)
   )
end

# #Comements
25.times do
 Comment.create(
   body: Faker::Hacker.say_something_smart,
   commentable_id: rand(1..10),
   commentable_type: ["Proposal", "Experiment", "Observation"].sample,
   user_id: rand(1..10)
   )
end