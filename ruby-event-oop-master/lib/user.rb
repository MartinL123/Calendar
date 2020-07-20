require "pry"

class User

	attr_accessor :email, :name
	@@all_users = [] #new array 

	#julie = User.new
    def initialize (email, age)
		@email = email
		@age = age
		@@all_users << self
	end

    #julie.update_email("julie@gmail.com")
	def update_email (email_to_update)
		@email = email_to_update
	end

	def read_email
    	return @email
  	end

    #julie.update_age("21")
  	def update_age (age_to_update)
  		@age = age_to_update
  	end

  	def read_age
  		return @age
  	end

  	#User.all
    def self.all
  		return @@all_users
  	end

    def self.find_by_email (email)
        @@all_users.each do |user|
            return user if user.email == email
        end
    end
end
#binding.pry