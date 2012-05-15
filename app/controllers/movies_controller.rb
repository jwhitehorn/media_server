class MoviesController < ApplicationController
  
  expose (:movies) { Movie.all }
  
end