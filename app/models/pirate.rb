class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(name,height, weight)
    @name = name
    @weight = weight
    @height = height
    @ships = []
    @@all << self
  end

  def self.all
    @@all.dup.freeze
  end

end
