require 'nokogiri'
require_relative 'category'
require_relative 'overview'

class Response

  def initialize(stream)
    @response = Nokogiri::HTML(stream)
  end

  def competitive
    Category.new('competitive-play', @response)
  end

  def quick_play
    Category.new('quick-play', @response)
  end

  def overview
    Overview.new(@response)
  end
end