class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.all
    unless current_user.has_role? :admin
      redirect_to root_path
    end
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
    @user = User.find_by(id: @store.user_id)
    @products = Product.where(store_id: @store.id)
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(store_params.merge(user_id: current_user.id))
    @user = current_user[:id]

    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, notice: 'Store was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores/1
  # PATCH/PUT /stores/1.json
  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to @store, notice: 'Store was successfully updated.' }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'Store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    rescue
      redirect_to root_path
    end

    def correct_user
      @store = Store.find(params[:id])
      if current_user == nil
        redirect_to root_path 
      elsif current_user != User.find_by(id: @store.user_id)
        redirect_to store_path(user_id: current_user.id)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:store_name)
    end
end
