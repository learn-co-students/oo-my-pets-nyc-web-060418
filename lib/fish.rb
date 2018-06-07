class Fish

  attr_reader :name, :species
  attr_accessor :mood

  def initialize(name)
    @name = name
    @species = "fish"
    @mood = "nervous"
  end

end
