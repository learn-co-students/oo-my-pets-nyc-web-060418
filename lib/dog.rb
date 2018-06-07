class Dog
attr_reader :cat_name
attr_accessor :mood

  def initialize(dog_name)
    @dog_name = dog_name
    @mood = "nervous"
  end

  def name
    @dog_name
  end
end
