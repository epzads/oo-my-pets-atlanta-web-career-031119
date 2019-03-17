class Owner
  attr_accessor :pets, :name
 	  attr_reader :species

   @@all = []

   def initialize(species)
    @species = species
    @@all << self
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end

   def self.all
    @@all
  end

   def self.reset_all
    @@all.clear
  end

   def self.count 
    @@all.size
  end

   def say_species
    "I am a #{species}."
  end

   def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

   def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

   def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

   def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"}

   end

   def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end

   def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy"}
  end

   def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

   def list_pets
    
  end

 end





# class Owner
#   # code goes here
#   attr_accessor =:all, :count, :pets, :species, :name    
#   # @name 
#   @@all = [ ]
#   @@count = 0 
# # @pets = {fishes: [], cats: [], dogs: []} 
  
#   def initialize(species = "human")
#   @species = species 
#   @@all << self
#   @@count += 1 
  
#   @pets = { :fishes => [], :dogs => [], :cats => [] }
# end

# def species 
  
#   @species 
# end   

# def name=(name) 
  
#   @name = name 
# end   



# def name
  
#   @name 
# end   

# def say_species
   
#   "I am a #{@species}."
   
# end    
   
#   def self.all 
     
#     @@all 
#     end  
   
#   def self.count
#   @@count
# end 
 
# def self.reset_all
 
# @@count = 0 
# end 
 
# def pets
# #@pets = {:fishes => [], :dogs => [], :cats => []}
# @pets 
# end
 
# def buy_fish(name)
#   fish = Fish.new(name)
#   @pets[:fishes]  << fish  
#   #puts @pets[:fishes]
# end 
# def buy_cat(name)
 
# cat = Cat.new(name)
# @pets[:cats] << cat  
# end 
 
# def buy_dog(name)
 
# dog = Dog.new(name)
# @pets[:dogs] << dog
 
# end 
 
# def walk_dogs
   
#   self.pets[:dogs].last.mood = "happy" 
# end 
 
# def play_with_cats
#   self.pets[:cats].last.mood = "happy"
# end 
 
# def feed_fish
# self.pets[:fishes].last.mood = "happy"
# end 
 
# def sell_pets 
#   pets.each do |type, pets|
#       pets.map {|pet| pet.mood = "nervous"}
# end 
#   pets.clear
# end    
 
 
# end
