class Cat

  attr_reader :species, :name
  attr_accessor :mood

  def initialize (name)
     @name = name
     @species = "cat"
     @mood = "nervous"
  end

end
