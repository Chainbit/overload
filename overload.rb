class Overload < Angelo::Base
  websocket '/' do |ws|
    websockets << ws
  end

  websocket '/bar' do |ws|
    websockets[:bar] << ws
  end

  get '/' do
    'Hello world'
  end

  post '/' do
    websockets.each {|ws| ws.write params[:foo]}
  end

  post '/bar' do
    websockets[:bar].each {|ws| ws.write params[:bar]}
  end
end

