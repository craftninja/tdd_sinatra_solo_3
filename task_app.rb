require 'sinatra/base'

class TaskApp < Sinatra::Application
  get '/' do
    "Welcome"
  end
end