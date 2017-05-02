# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
user_id = 1
text_array = [
  'What was the last funny video you saw?',
  'What do you do to get rid of stress?',
  'What is something you are obsessed with?',
  'Who is your favorite entertainer (comedian, musician, actor, etc.)?',
  'What’s your favorite way to waste time?',
  'Do you have any pets? What are their names?',
  'Where did you go last weekend? What did you do?',
  'What are you going to do this weekend?',
  'What is something that is popular now that annoys you?',
  'What did you do on your last vacation?',
  'What was the last time you worked incredibly hard?',
  'Are you very active of do you prefer to just relax in your free time?',
  'What do you do when you hang out with your friends?',
  'Who is your oldest friend? Where did you meet them?',
  'What’s the best / worst thing about your work / school?',
  'If you had intro music, what song would it be? Why?',
  'What were you really into when you were a kid?'
]

text_array.each do |text|
  Line.create(text: text, user_id: user_id)
end
