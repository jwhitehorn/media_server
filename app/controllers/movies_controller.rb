class MoviesController < ApplicationController
  
  expose (:movies) { Movie.order(:name).all }
  
end