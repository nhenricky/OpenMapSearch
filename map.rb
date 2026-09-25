

require 'sinatra'
require 'open_street_map'

get "/" do
    erb :index
end 

get "/buscar" do
    local = params[:local]

    client = OpenStreetMap::Client.new

    @resultado = client.search(
        q: local,
        format: "json",
        addressdetails: "1",
        accept_language: "pt-BR"

    )

    erb :index
end 