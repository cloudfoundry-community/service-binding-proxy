require 'sinatra'

class MyApp < Sinatra::Base
  get '/', provides: ['json'] do
    ENV['VCAP_SERVICES'] || '{}'
  end
end
