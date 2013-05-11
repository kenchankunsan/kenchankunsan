require 'sinatra'

get '/' do
  ken = 'けん'
  prefixes = %w(さん くん ちゃん)

  loop do
    if (ken + (prefix = prefixes.sample)).size < 140
      ken << prefix
    else
      break
    end
  end

  ken + '…'
end
