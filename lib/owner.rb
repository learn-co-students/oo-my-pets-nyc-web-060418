require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

    def initialize(species="human")
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

    # def species(species ="human")
    #
    # end

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
    @pets[:dogs].map do |variable|
      variable.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |variable|
      variable.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |variable|
      variable.mood = "happy"
    end
  end

  def sell_pets
    @pets.map do |pet|
      pet[1].map do |detail|
        detail.mood = "nervous"
      end
    end

    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
