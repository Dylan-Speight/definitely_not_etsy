class StoreNamesController < ApplicationController
  before_action :set_store_name, only: [:show, :edit, :update, :destroy]

  # GET /store_names
  # GET /store_names.json
  def index
    @store_names = StoreName.all
  end

  # GET /store_names/1
  # GET /store_names/1.json
  def show
  end

  # GET /store_names/new
  def new
    @store_name = StoreName.new
  end

  # GET /store_names/1/edit
  def edit
  end

  # POST /store_names
  # POST /store_names.json
  def create
    @store_name = StoreName.new(store_name_params)

    respond_to do |format|
      if @store_name.save
        format.html { redirect_to @store_name, notice: 'Store name was successfully created.' }
        format.json { render :show, status: :created, location: @store_name }
      else
        format.html { render :new }
        format.json { render json: @store_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_names/1
  # PATCH/PUT /store_names/1.json
  def update
    respond_to do |format|
      if @store_name.update(store_name_params)
        format.html { redirect_to @store_name, notice: 'Store name was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_name }
      else
        format.html { render :edit }
        format.json { render json: @store_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_names/1
  # DELETE /store_names/1.json
  def destroy
    @store_name.destroy
    respond_to do |format|
      format.html { redirect_to store_names_url, notice: 'Store name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_name
      @store_name = StoreName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_name_params
      params.fetch(:store_name, {})
    end
end
