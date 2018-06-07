class Dog

  attr_reader :name, :species
  attr_accessor :mood


  def initialize(name)
    @name = name
    @species = "dog"
    @mood = "nervous"
  end

end
