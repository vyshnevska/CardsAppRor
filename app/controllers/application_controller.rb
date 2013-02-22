class ApplicationController < ActionController::Base
  attr_accessor :game_status
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

end
