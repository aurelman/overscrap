require "overscrap/version"
require 'httparty'

module Overscrap


  def self.user(username, opts = {})
    default = { region: :us, platform: :pc }

    options = default.merge(opts)

    player = username.gsub('#', '-')
    HTTParty.get("https://playoverwatch.com/en-us/career/#{options[:platform]}/#{options[:region]}/#{player}", verify: false)
  end

end
