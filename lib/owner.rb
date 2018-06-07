require_relative "./cat"
require_relative "./dog"
require_relative "./fish"
require 'pry'

class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
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
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    @name = name
    Fish.new(@name)
    @pets[:fishes] << self
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
    @pets.each do |pet, value|
      pet.mood = "nervous"
      binding.pry
    end
  end

end
