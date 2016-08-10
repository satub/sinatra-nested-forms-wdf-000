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
      #  binding.pry
      # @ship1 = Ship.new(params["ship_name_1"], params["ship_type_1"], params["ship_booty_1"])
      # @ship1 = Ship.new(params["ship_name_2"], params["ship_type_2"], params["ship_booty_2"])
      # @pirate.ships << @ship1
      # @pirate.ships << @ship2

      erb :"pirates/show"
    end

  end
end
