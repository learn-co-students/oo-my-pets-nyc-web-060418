require 'pry'

class Owner
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def pets
    @pets
  end

#initialize new fish named bubbles
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

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_key, pet|
      pet.each do |value|
        value.mood = "nervous"
      end
      pet.clear
    end
  end

#array length = number of pet type
#@pets keys = pet
#we need a string that lists these in order of fish - > dogs -> cats
#helper functions?
  def list_pets
    num_pets
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

  def num_fish
    @pets[:fishes].length
  end

  def num_dogs
    @pets[:dogs].length
  end

  def num_cats
    @pets[:cats].length
  end

  def num_pets
    num_fish
    num_dogs
    num_cats
  end

end
