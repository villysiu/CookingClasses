class CookingClasses::Lesson
  attr_accessor :name, :url, :description, :menu
  @@all = []

  def initialize (name = nil, url = nil, description = nil, menu = nil)
    @name = name
    @url = url
    @description = description
    @menu = menu
    @@all << self
  end

  
end
