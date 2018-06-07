class Fish
  attr_reader :fish_name
  attr_accessor :mood

    def initialize(fish_name)
      @fish_name = fish_name
      @mood = "nervous"
    end

    def name
      @fish_name
    end
end
