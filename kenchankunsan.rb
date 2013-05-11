require 'sinatra'
require 'haml'

get '/' do
  ken = 'けん'
  suffixes = %w(さん くん ちゃん)

  while (ken + (suffix = suffixes.sample)).size < 140 do
    ken << suffix
  end

  ken  = ken + '…'

  haml :kenchan, locals: { ken: ken }
end
