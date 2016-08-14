require 'nokogiri'
require_relative 'category'
require_relative 'overview'

class Response

  def initialize(stream)
    @doc = Nokogiri::HTML(stream)
  end

  def competitive
    Category.new(category "competitive-play")
  end

  def quick_play
    Category.new(category "quick-play")
  end

  def overview
    Overview.new(@doc)
  end

  private
  def category(category)
    @doc.xpath("//*[@id=\"#{category}\"]/section[1]/div/ul")
  end
end
