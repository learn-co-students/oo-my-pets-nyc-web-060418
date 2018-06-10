require 'pry'

class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name, :pets, :mood

  @@all = []

  def initialize(species)
    @species = species
    @name
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@all.count
  end

  def self.count
    @@all.count
  end

  def say_species
    p "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.map do |type, pets|
      pets.map do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    p "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
