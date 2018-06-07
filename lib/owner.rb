require 'pry'

class Owner

  @@all = []


  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    @pets[:fishes].length
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    @pets[:cats].length
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    @pets[:dogs].length
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
    @pets.each do |pet_key, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
      pet_array.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
