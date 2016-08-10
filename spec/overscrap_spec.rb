require 'spec_helper'

RSpec.describe Overscrap do
  it 'has a version number' do
    expect(Overscrap::VERSION).not_to be nil
  end

  before :example do
    @httparty = class_double(HTTParty).as_stubbed_const
  end

  it 'uses :us as default region and :pc as default platform' do
    expect(@httparty).to receive(:get).with(/https:\/\/playoverwatch.com\/en-us\/career\/pc\/us\/.*/, any_args)

    Overscrap::user "Bob#31"
  end

  it 'takes into consideration specified platform and region parameters' do
    expect(@httparty).to receive(:get).with(/https:\/\/playoverwatch.com\/en-us\/career\/ps4\/eu\/.*/, any_args)

    Overscrap::user "Bob#31", :eu, :ps4
  end

  it 'takes into consideration region parameters and set platform to :pc by default' do
    expect(@httparty).to receive(:get).with(/https:\/\/playoverwatch.com\/en-us\/career\/pc\/eu\/.*/, any_args)

    Overscrap::user "Bob#31", :eu
  end

  it 'transform the given player tag by replacing # char' do
    expect(@httparty).to receive(:get).with(/https:\/\/playoverwatch.com\/en-us\/career\/pc\/us\/Bob-31/, any_args)

    Overscrap::user "Bob#31"
  end
end
