class MoviesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  # GET /movies
  # GET /movies.json
  def index
    @user = User.find(params[:user_id])
    @list = List.find(params[:list_id])
    target_movies = Movie.where(list_id: params[:list_id])
    @movies = Array(target_movies)
  end
  # GET /movies/1
  # GET /movies/1.json
  def show
    @user = set_user
    @list = set_list
    @movie = set_movie
  end
  # GET /movies/new
  def new
    @movie = Movie.new
  end
  # GET /movies/1/edit
  def edit
    @user = set_user
    @list = set_list
    @movie = set_movie
  end
  # POST /movies
  # POST /movies.json
  # def create
  #   @movie = Movie.new(movie_params_create)
  #   @user = set_user
  #   @list = set_list
  #   #movie create is using pets lab flas message
  #   if @movie.save!
  #     flash[:notice] = "Movie saved successfully!"
  #     redirect_to user_list_movies_path
  #   else
  #     flash[:error] = @movie.errors.full_messages.join(", ")
  #     redirect_to user_list_movies_path(@user, @list)
  #   end
  #
  # end
  def create
    @movie = Movie.new(movie_params_create)
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
      if @movie.update(movie_params_update)
        format.html { redirect_to user_list_movies_url, notice: 'Movie was successfully updated.' }
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
    # list param for create without require list
    def set_list
      @list = List.find(params[:list_id])
    end
    def set_user
      @user = User.find(params[:user_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params_create
      # params.fetch(:movie, {})
      params.permit(:title, :director, :synopsis, :year, :runtime, :rating, :list_id)
    end
    # list param for create without require list
    def movie_params_update
      # params.fetch(:movie, {})
      params.require(:movie).permit(:title, :director, :synopsis, :year, :runtime, :rating)
    end
end