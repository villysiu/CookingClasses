class CookingClasses::Lesson
  attr_accessor :name, :url, :description, :menu
  @@all = []
  @@base_url = "https://www.surlatable.com/"

  def initialize (name = nil, url = nil, description = nil, menu = nil)
    @name = name
    @url = url
    @description = description
    @menu = menu
    @@all << self
  end

  def self.all
    @@all.empty? ? scrape_lessons : @@all
  end

  def self.scrape_lessons
    doc = Nokogiri::HTML(open(@@base_url + "category/cat2211278/In+Store+Classes"))

    lesson_array = doc.css("div.boxsides").first
    #binding.pry
    lesson_array.css("div.product a").each do |l|
      lesson_obj = self.new
      lesson_obj.name = l.children[1]['alt'].sub!('Cooking Class: ', '')
      lesson_obj.url = l['href']
    end
    @@all
  end
  
  def description
    if @description.nil?
      doc = Nokogiri::HTML(open(@@base_url + self.url))
      @description = doc.css("div.boxsides").children[6].text
    end
    @description
  end

  def menu
    if @menu.nil?
      doc = Nokogiri::HTML(open(@@base_url + self.url))
      @menu = doc.css("div.boxsides").children[2].text
    end
    @menu
  end


end
