class MoviesController < ApplicationController


  def index
        render json: Movie.all
      end

      def show
        render json: Movie.find(params[:id])
      end

      def create
        movie = Movie.new(movie_params)

        if movie.save
          render json: movie, status: :created, location: movie
        else
          render json: movie.errors, status: :unprocessable_entity
        end
      end

      def update
        movie = Movie.find(params[:id])
        if movie.update(movie_params)
          render json: movie
        else
          render json: movie.errors, status: :unprocessable_entity
        end
      end

      def destroy
        Movie.find(params[:id]).destroy

        render json: {status: 204}
      end

      private

        def movie_params
          params.require(:movie).permit(:title, :genre, :release_date, :director, :poster_url)
        end
    end
