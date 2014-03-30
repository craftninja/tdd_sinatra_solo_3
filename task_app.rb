require 'sinatra/base'

class TaskApp < Sinatra::Application
  TASKS = []
  get '/' do
    erb :index, locals: {:tasks => TASKS}
  end
  get'/new_task' do
    erb :add_task
  end
  post '/' do
    TASKS << params[:task]
    redirect '/'
  end
end