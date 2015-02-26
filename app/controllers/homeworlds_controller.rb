class HomeworldsController < ApplicationController
  before_action :set_homeworld, only: [:show, :edit, :update, :destroy]

  # GET /homeworlds
  # GET /homeworlds.json
  def index
    @homeworlds = Homeworld.all
  end

  # GET /homeworlds/1
  # GET /homeworlds/1.json
  def show
  end

  # GET /homeworlds/new
  def new
    @homeworld = Homeworld.new
  end

  # GET /homeworlds/1/edit
  def edit
  end

  # POST /homeworlds
  # POST /homeworlds.json
  def create
    @homeworld = Homeworld.new(homeworld_params)

    respond_to do |format|
      if @homeworld.save
        format.html { redirect_to @homeworld, notice: 'Homeworld was successfully created.' }
        format.json { render action: 'show', status: :created, location: @homeworld }
      else
        format.html { render action: 'new' }
        format.json { render json: @homeworld.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homeworlds/1
  # PATCH/PUT /homeworlds/1.json
  def update
    respond_to do |format|
      if @homeworld.update(homeworld_params)
        format.html { redirect_to @homeworld, notice: 'Homeworld was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @homeworld.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homeworlds/1
  # DELETE /homeworlds/1.json
  def destroy
    @homeworld.destroy
    respond_to do |format|
      format.html { redirect_to homeworlds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homeworld
      @homeworld = Homeworld.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homeworld_params
      params[:homeworld]
    end
end
