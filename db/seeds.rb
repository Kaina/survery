# require 'faker'

# # create seed users

# User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
# 5.times do
#   User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
# end

User.create(username: "brett", email: "brett", password: "brett")
Survey.create(surveyname: "Coding", user_id: 1)
Question.create(question: "do you like to code?", survey_id: 1)
Choice.create(choice: "yes", question_id: 1)
Choice.create(choice: "no", question_id: 1)
Response.create(survey_id: 1, choice_id: 1, user_id: 1)
