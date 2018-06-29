require 'pry'
class Owner
@@all = []

attr_reader :species
attr_accessor :name, :pets

  def initialize(species = "human")
    @name = name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, animal|
      animal.each do |animal|
        animal.mood = "nervous"
      end
      animal.clear
    end
  end

  def list_pets
      fish_count = self.pets[:fishes].count
      dog_count = self.pets[:dogs].count
      cat_count = self.pets[:cats].count
      "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end



end
