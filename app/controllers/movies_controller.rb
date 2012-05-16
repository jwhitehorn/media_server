class MoviesController < ApplicationController
  
  expose :movie
  expose (:movies) { Movie.order(:name).all }
  
  
  def update
    movie.update_attributes params[:movie]
    
    flash[:notice] = "Movie Updated"
    redirect_to :back
  end
end