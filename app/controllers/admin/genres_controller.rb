class Admin::GenresController < ApplicationController

def index
  @genres = Genre.all
end

def new
  @genre = Genre.new
end

def create
  @genre = Genre.new(genre_params)
  if @genre.save
    flash[:notice] = "the genre was created"
    redirect_to new_admin_item_path
  else
    redirect_to new_admin_item_path
  end
end

def destroy
  @genre = Genre.find(params[:id])
  @genre.destroy
  redirect_to admin_genres_path
end

end
