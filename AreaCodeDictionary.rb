dail_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717",
}




# Get city name from the hash 
def get_city_names(somehash)
    somehash.keys
end    

# Get area code based on given hash and key
def get_area_code (somehash, key)
    somehash[key]
end

loop do 
    puts "Do you want to lookup an area codebased on a city namy? (Y/N)"
    lookup_decision = gets.chomp.upcase!
    break if lookup_decision != "Y"
    puts "Which city do you want the area code for?"
    puts get_city_names(dail_book)
    user_city = gets.chomp.downcase
    if dail_book.include? (user_city)
         puts "The area code for #{user_city.capitalize} is #{get_area_code(dail_book, user_city)}"
    else 
        puts "This city is not on the list"  
    end
end
