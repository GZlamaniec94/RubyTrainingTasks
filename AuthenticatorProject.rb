users = [
    {username: "Adam", password: "pass1"},
    {username: "Bogdan", password: "pass2"},
    {username: "Cecylia", password: "pass3"},
    {username: "Daniel", password: "pass4"},    
]
def auth_user(username, password, list_of_users)
list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
        return user_record      
           
    end
end
 "Credentials are not correct"
end

puts "Welcome to  authenticator"
30.times {print "-"} 
puts
puts "This program will take input from the user and compare the password"
puts "If password is correct,you will get back the user object"

attempts = 1

while attempts < 4
print "Username: " 
username = gets.chomp
print "Password: "
password = gets.chomp
authenticator =  auth_user(username, password, users)
puts authenticator
puts "Press n to quit or any other key to continue:"
input = gets.chomp.downcase
break if input == "n"
attempts += 1
end

puts "You have exceeded number of attempts" if attempts == 4