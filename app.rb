require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/new' do
      @pirate = Pirate.new(params["pirate"]["name"],params["pirate"]["height"],params["pirate"]["weight"])
      params["pirate"]["ships"].each do |ship|
        @ship = Ship.new(ship["name"], ship["type"], ship["booty"])
        @pirate.ships << @ship
      end
      erb :"pirates/show"
    end

  end
end
