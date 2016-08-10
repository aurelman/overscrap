require "overscrap/version"
require 'httparty'

module Overscrap
  # Your code goes here...
  def self.user(username, region=:us, platform=:pc)
    player = username.gsub('#', '-')
    HTTParty.get("https://playoverwatch.com/en-us/career/#{platform}/#{region}/#{player}", verify: false)
  end
end
