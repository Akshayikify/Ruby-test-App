class Greeter
  def initialize(name = "World")
    @name = name
  end

  def say_hello
    "Hello, #{@name}!"
  end

  def say_goodbye
    "Goodbye, #{@name}, come back soon."
  end
end
