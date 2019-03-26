def get_input_from_user
    puts "please create a username!"
    user_input = gets.chomp

    User.create_or_find_by(username: user_input)
#   binding.pry
  
end
  
def welcome
    puts "Welcome to Git-Me-a-Job"
end

def greeting(name)
    puts "Welcome to Git-Me-a-Job #{name}"
end

