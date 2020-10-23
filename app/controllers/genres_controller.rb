class GenresController < ApplicationController
  before_action :find_genre, only: %i[update edit show]

  def show; end

  def edit; end

  def new
    @genre = Genre.new
  end

  def update
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(args)
  end
end
