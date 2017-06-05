class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  # GET /lists
  # GET /lists.json
  def index
    user = set_user
    @lists = user.lists.all
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @user = set_user
    @list = set_list
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
    @user = set_user
    @list = set_list
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(list_params_create)

    if @list.save!
      flash[:notice] = "List saved successfully!"
      redirect_to user_lists_path
    else
      flash[:error] = @list.errors.full_messages.join(", ")
      redirect_to user_lists_path(@user)
    end

  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params_update)
        format.html { redirect_to user_lists_url, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to user_lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end
    # list param for create without require list
    def list_params_create
      params.permit(:name, :user_id, lists_attributes: [:name, :user_id])
    end
    # list params for update with require list
    def list_params_update
      params.require(:list).permit(:name, :user_id, lists_attributes: [:id,  :_destroy])
    end
    def set_user
      @user = User.find(params[:user_id])
    end
end
