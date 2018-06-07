require 'pry'

class Owner
attr_accessor :name, :pets
attr_reader :species
  @@all = []
  # attr_accessor :fishes, :cats, :dogs
  #
  # @@pets = {fishes: [], cats: [], dogs: []}

  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats:  [], dogs: []}
    @@all << self

    # @fishes = fishes
    # @cats = cats
    # @dogs = dogs
    # @@pets[] << self

  end

  def self.all
    @@all
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, name|
      name.each do |name_specific|
        name_specific.mood = "nervous"
      end
    end
    @pets.clear

  end

def say_species
  "I am a #{@species}."
end

def list_pets
#   @pets.each do |type, name|
# puts "I have "
#   end
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end

end
