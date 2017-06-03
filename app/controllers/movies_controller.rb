class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
    @user = User.find(params[:user_id])
    @list = List.find(params[:list_id])
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @user = User.find(params[:user_id])
    @movie = Movie.find(params[:id])
    @list = List.find(params[:list_id])
    render :show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @user = User.find(params[:user_id])
    @list = List.find(params[:list_id])
  end

  # GET /movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
    @user = User.find(params[:user_id])
    @list = List.find(params[:list_id])
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to user_list_movies_url, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to redirect_to user_list_movies_url, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to user_list_movies_path, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      # params.fetch(:movie, {})
      # params.permit(:title, :director, :synopsis, :image, :year, :runtime, :rating)
    end
end
