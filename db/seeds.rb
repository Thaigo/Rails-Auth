@user = User.create(email: "test@test.com", 
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf")
  
puts "1 User created"


40.times do |t|
Ticket.create!(title: "#{t} content", user_id: @user.id)
end

puts "40 tikets created"