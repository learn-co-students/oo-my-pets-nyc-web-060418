require_relative "./cat"
require_relative "./dog"
require_relative "./fish"
require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []


  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  def buy_fish(name)
    @name = name
    new_fish = Fish.new(@name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    @name = name
    new_cat = Cat.new(@name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    @name = name
    new_dog = Dog.new(@name)
    @pets[:dogs] << new_dog
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
    returned_pets = []
    @pets.each do |pet_type, pet|
      pet.each do |info|
        info.mood = "nervous"
      end
      pet.clear
    end

  end

  def list_pets
    return "I have #{ @pets[:fishes].count } fish, #{ @pets[:dogs].count } dog(s), and #{ @pets[:cats].count } cat(s)."
  end

end
