class GameManager
  attr_accessor :game_status

end
class ApplicationController < ActionController::Base
  attr_accessor :game_status
  helper_method :update_game_status

  @gM = GameManager.new
  #protect_from_forgery
  #def index
  #  @decks = Deck.all
  #
  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @decks }
  #  end
  #end
  def start
    #@deck = Deck.new
    #redirect_to 'games/new'
    #game_id = params[:id]
    #render :controller => "decks", :action => "new"#, :id => 1
    #redirect_to :controller => "decks", :action => "new"#, :id => 1

  end

  def update_game_status (status)
    @gM.game_status = status
  end
  def game_status
    @gM.game_status
  end

end

