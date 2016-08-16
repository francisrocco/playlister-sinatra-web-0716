class ArtistsController < ApplicationController

#READ
#--- present user with list of clickable artists to show page
  get '/artists' do
    @artists = Artist.all
    erb :'artists/index'
  end

  #/artists/new

  #/artists/:slug --- should have links to songs and genres.

end
