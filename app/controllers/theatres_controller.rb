class TheatresController < ActionController::Base
  def index
    render json: Theatre.all.to_json, status: 200
  end
end
