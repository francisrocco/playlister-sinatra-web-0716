class SongsController < ApplicationController

#READ

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'songs/show'
  end

  #/songs/new ---

  #/songs/:slug --- song show page
  ####          --- should have links to that song's artist and each genre to song


end
