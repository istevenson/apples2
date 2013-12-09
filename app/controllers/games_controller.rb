class GamesController < ApplicationController
  # before_action :set_game, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_player!, only: [:show]
  # GET /games
  # GET /games.json
  # def index
  #   @games = Game.all
  # end

  # GET /games/1
  # GET /games/1.json
  def show
    secret_id = params[:secret_id]
    @game = Game.where("secret_id = '#{secret_id}'").first
    if @game.blank?
      redirect_to :controller => 'home', :action => 'index'
    end
  end

  # GET /games/new
  # def new
  #   @game = Game.new
  # end

  # GET /games/1/edit
  # def edit
  # end

  # POST /games
  # POST /games.json
  def create

    @game = Game.new
    @game.save
    render :json => {}
    # render :json => {}
    # @game = Game.new(game_params)
    # new_game = false
    # if !params.has_key(:secret_id)
    #   @game = Game.new
    #   secret_id = @game.secret_id
    #   new_game = true
    # else
    #   secret_id = params[:game_id]
    # end
    # @game.save

    # if new_game
    #   render :json => {:new_secret_id => @game.secret_id}
    # end

    # render :json => {}

    # respond_to do |format|
    #   if @game.save
    #     format.html { redirect_to game_path(:id => @game.secret_id), notice: 'Game was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @game }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @game.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    @game = Game.where("secret_id='#{secret_id}").first
    respond_to do |format|
      if game.update
        format.html
        format.json { render json: @game }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  # def destroy
  #   @game.destroy
  #   respond_to do |format|
  #     format.html { redirect_to games_url }
  #     format.json { head :no_content }
  #   end
  # end

  def chooser
    # @game = Game.new(game_params)
    # @game.save
    secret_id = params[:secret_id]
    @game = Game.where("secret_id = '#{secret_id}'").first

    # if @game.green_card_id
    #   @green_card = GreenCard.find_by game_id: @game.id
    # end
    # @green_card = GreenCard.where("game_id = ?", @game.id)
    # @player = Player.find(params[:id])
    # if @player.plays.has_key?[:game_id]
    #   game_id = params[:game_id]
    # else
    # @player[:game_id] = game_id
  end

  def game_player
    # secret_id = params[:secret_id]
    # @game = Game.where("secret_id = '#{secret_id}'").first
    # @green_card = GreenCard.find_by game_id: @game_id

    @game = Game.where(:secret_id => params[:id]).first
    # @green_card = GreenCard.where("game_id = ?", @game.id)
  end

  # private
    # Use callbacks to share common setup or constraints between actions.
    # def set_game
    #   @game = Game.where(:secret_id => params[:id]).first
    # end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def game_params
    #   params.permit(:green_card_id, :red_card_id, :player_id, :id, :secret_id)
    # end
end
