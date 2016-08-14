require "overscrap/version"
require "overscrap/response"

require 'httparty'


module Overscrap

  USER_DEFAULT_PARAMS = { region: :us, platform: :pc }
  AVAILABLE_PLATFORMS = [ :pc, :psn, :xml ]
  AVAILABLE_REGIONS = [ :eu, :us, :kr, :cn, :global ]

  private_constant :USER_DEFAULT_PARAMS

  def self.user(username, opts = {})
    options = USER_DEFAULT_PARAMS.merge(opts)

    raise ArgumentError.new("not a valid platform") unless AVAILABLE_PLATFORMS.include? options[:platform]
    raise ArgumentError.new("not a valid region") unless AVAILABLE_REGIONS.include? options[:region]

    player = username.gsub('#', '-')

    Response.new(HTTParty.get("https://playoverwatch.com/en-us/career/#{options[:platform]}/#{options[:region]}/#{player}", verify: false))
  end

end
