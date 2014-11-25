ENV['RACK_ENV'] ||= 'test'

require File.expand_path '../../kenchankunsan.rb', __FILE__
require 'maxitest/autorun'
require 'rack/test'

describe 'けんちゃんくんさん' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  before do
    get '/'
  end

  it "says /けん|ちゃん|くん|さん/" do
    last_response.body.must_match /けん|ちゃん|くん|さん/
  end
end
