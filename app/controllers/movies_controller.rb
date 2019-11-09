class MoviesController < ActionController::Base
  def index
    render json: Movie.all.to_json, status: 200
  end
end
