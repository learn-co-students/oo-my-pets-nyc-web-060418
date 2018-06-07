require_relative "./cat"
require_relative "./fish"
require_relative "./dog"
require 'pry'
class Owner
  # code goes here
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets


  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_string)
    new_fish = Fish.new(fish_string)
    @pets[:fishes] << new_fish
  end

  def buy_dog(dog_string)
    new_dog = Dog.new(dog_string)
    @pets[:dogs] << new_dog
  end

  def buy_cat(cat_string)
    new_cat = Cat.new(cat_string)
    @pets[:cats] << new_cat
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

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def sell_pets
  #  @pets = {:fishes => [], :dogs => [], :cats => []}
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
    @pets[key] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end