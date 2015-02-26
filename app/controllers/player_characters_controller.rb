class PlayerCharactersController < ApplicationController
  before_action :set_player_character, only: [:show, :edit, :update, :destroy]
  respond_to :html. :json
  # GET /player_characters
  # GET /player_characters.json
  def index
    @player_characters = PlayerCharacter.all
  end

  # GET /player_characters/1
  # GET /player_characters/1.json
  def show
  end

  # GET /player_characters/new
  def new
    @player_character = PlayerCharacter.new
  end

  # GET /player_characters/1/edit
  def edit
  end

  # POST /player_characters
  # POST /player_characters.json
  def create
    @player_character = PlayerCharacter.new(player_character_params)

    respond_to do |format|
      if @player_character.save
        format.html { redirect_to @player_character, notice: 'Player character was successfully created.' }
        format.json { render action: 'show', status: :created, location: @player_character }
      else
        format.html { render action: 'new' }
        format.json { render json: @player_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_characters/1
  # PATCH/PUT /player_characters/1.json
  def update
    respond_to do |format|
      if @player_character.update(player_character_params)
        format.html { redirect_to @player_character, notice: 'Player character was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @player_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_characters/1
  # DELETE /player_characters/1.json
  def destroy
    @player_character.destroy
    respond_to do |format|
      format.html { redirect_to player_characters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_character
      @player_character = PlayerCharacter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_character_params
      params[:player_character]
    end
end
