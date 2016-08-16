class SongsController < ApplicationController

#CREATE

  get '/songs/new' do
    erb :'songs/new'
  end

  post '/songs' do
    binding.pry
    song_artist_id = Artist.find_or_create_by(name: "#{params[:song][:artist][:name]}").id
    song_genres = []
    params[:song][:genres].each do |genre_id|
      song_genres << Genre.find(genre_id.to_i)
    end
    @song = Song.create(name: params[:song][:name], artist_id: song_artist_id)
    redirect '/songs/:slug'
  end

#READ

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'songs/show'
  end

end
