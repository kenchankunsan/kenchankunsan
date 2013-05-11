require 'sinatra'

get '/' do
  ken = 'けん'
  prefixes = %w(さん くん ちゃん)

  while (ken + (prefix = prefixes.sample)).size < 140 do
    ken << prefix
  end

  ken + '…'
end
