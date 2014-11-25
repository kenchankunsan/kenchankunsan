ENV['RACK_ENV'] ||= 'test'

require File.expand_path '../../kenchankunsan.rb', __FILE__
require 'rspec'
require 'rack/test'

describe 'けんちゃんくんさん' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  before do
    get '/'
  end

  it "says hello" do
    expect(last_response.body).to eq('けんちゃんくんさん')
  end
end
