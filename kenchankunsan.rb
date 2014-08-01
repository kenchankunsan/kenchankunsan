require 'sinatra'
require 'sinatra/respond_to'
require 'haml'

Sinatra::Application.register Sinatra::RespondTo

get '/' do
  ken = 'けん'
  suffixes = %w(さん くん ちゃん)

  while (ken + (suffix = suffixes.sample)).size < 140 do
    ken << suffix
  end

  ken  = ken + '…'

  respond_to do |format|
    format.html { haml :kenchan, locals: { ken: ken } }
    format.text { ken }
  end
end
