class PagesController < ApplicationController
  def index
    query = movie_params[:query].nil? ? "" : movie_params[:query]
    path = "/search/movie?query=#{query}&api_key=a99cc60fc2b34dbb18cb806b8a88ed14"
    movies = ApiService.get_call(path)
    render json: {message: "Welcome", data: movies}
  end

  def configuration
    path = "/configuration?api_key=a99cc60fc2b34dbb18cb806b8a88ed14"
    configuration = ApiService.get_call(path)
    render json: {data: configuration}
  end

  private
  def movie_params
    params.permit(:query)
  end
end
