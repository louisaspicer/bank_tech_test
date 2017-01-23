require 'sinatra/base'

class bank < Sinatra::Base
  get '/' do
    'Hello bank!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
