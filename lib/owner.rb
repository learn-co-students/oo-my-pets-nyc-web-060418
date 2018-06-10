require 'pry'
class Owner
  @@all = []

  attr_reader :species
  attr_accessor :fishes, :cats, :dogs, :name, :pets

  def initialize (pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def name
    @name
  end

  def pets
    @pets
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
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
    fish.mood = "happy"
    end
  end

  def sell_pets
    pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    pets[:fishes].each do |fish|
    fish.mood = "nervous"
    end
    @pets.clear
  end

  def list_pets
    fish_count = @pets[:fishes].length
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
