class Cat

attr_reader :cat_name
attr_accessor :mood

  def initialize(cat_name)
  @cat_name = cat_name
  @mood = "nervous"
  end

  def name
    @cat_name
  end
end
