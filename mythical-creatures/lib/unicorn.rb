class Unicorn
  attr_reader :name, :color

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def silver?
    @color == 'silver' ? true : false
  end

  def say(stuff)
    "**;* #{stuff} **;*"
  end
end
