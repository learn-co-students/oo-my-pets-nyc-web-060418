require_relative './fish'
require_relative './dog'
require_relative './cat'
require 'pry'

class Owner

@@all = []

attr_accessor :pets, :name
attr_reader :species

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def buy_fish(name)
    fish_instance = Fish.new(name)
    @pets[:fishes] << fish_instance
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_cat(name)
    cat_instance = Cat.new(name)
    @pets[:cats] << cat_instance
  end

  def buy_dog(name)
    dog_instance = Dog.new(name)
    @pets[:dogs] << dog_instance
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
    @pets.each do |key, value|
      value.each do |pets|
        pets.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end

alan = Owner.new("Alan")
noah = Dog.new("Noah")
