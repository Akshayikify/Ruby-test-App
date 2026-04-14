require_relative 'greeter'

def main
  puts "Welcome to the Ruby Test App!"
  print "Enter your name: "
  # In a real shell, we'd use gets.chomp, but since we're just structuring:
  name = "Ruby User" 
  
  greeter = Greeter.new(name)
  puts greeter.say_hello
  puts greeter.say_goodbye
end

if __FILE__ == $0
  main
end
