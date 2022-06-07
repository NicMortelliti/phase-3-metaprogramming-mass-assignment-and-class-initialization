require 'pry'

class User
  # Commented out so we can dynamically set setters and getters
  # attr_accessor :name, :age, :location, :user_name

  def initialize(attributes)
    attributes.each do |key, value|
      # Here we're setting the setter/getter for each key
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

twitter_user = {
  name: "Sophie",
  user_name: "sm_debenedetto",
  age: 26,
  location: "NY, NY"
}

sophie = User.new(twitter_user)

binding.pry