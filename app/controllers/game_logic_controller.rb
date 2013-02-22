class GameLogicController < ApplicationController
  attr_accessor :game_id

  def before_start_game
    #
  end

  def first_stroke
    #
  end

  def start
    @game = Game.find(params[:id])
    respond_to do |format|
      if !@game.players.empty?
        format.html {redirect_to :controller => "decks", :action => "new", :game_id => params[:id] }
      else
        format.html { redirect_to games_path, notice: "Please add player for #{@game.name}"}
        # render :template =>"games/index"
      end
    end
    # render :template => "decks/new", :deck =>@deck
    # @deck = Deck.new
    # render :template => "decks/new", :deck =>@deck
    #game_id = params[:id]
    # render :controller => "decks", :action => "new"#, :id => 1
    #redirect_to :controller => "decks", :action => "new"#, :id => 1
  end

  #def create_deck
  #  @deck = Deck.new
  #  52.times do
  #    card = @deck.cards.build
  #  end
  #  @deck.cards.each_with_index do |c, id|
  #    c.value = VALUES[id % 13]
  #    c.suit = SUITS[id % 4]
  #  end
  #  #@deck.game_id = game.game_id
  #
  #  #  redirect_to @deck, notice: 'Deck was successfully start.'
  #end
end
