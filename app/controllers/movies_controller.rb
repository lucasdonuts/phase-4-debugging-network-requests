class MoviesController < ApplicationController
  # wrap_parameters format: []
  # rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_response
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movi.create!(movie_params)
    render json: movie
  end

  private

  def movie_params
    params.permit(
      :title,
      :year,
      :length,
      :director,
      :description,
      :poster_url,
      :category,
      :discount,
      :female_director
    )
  end

  # def render_invalid_response(invalid)
  #   render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  # end
end
