require_relative './fish.rb'
require_relative './dog.rb'
require_relative './cat.rb'

require 'pry'

class Owner
  # code goes here
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize (species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.length
  end

  def self.reset_all
    Owner.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish (fish)
    self.pets[:fishes] << (Fish.new(fish))
  end

  def buy_cat (cat)
    self.pets[:cats] << (Cat.new(cat))
  end

  def buy_dog (dog)
    self.pets[:dogs] << (Dog.new(dog))
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |pet_species, pet_arr|
      pet_arr.each do |pet|
        pet.mood = 'nervous'
      end
      pet_arr.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

#binding.pry
end
