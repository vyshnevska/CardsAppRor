class DecksController < ApplicationController
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(Spade Heart Club Diamond)
  after_filter :save_count, :only => [:create, :update]

  def index
    # @game = Game.find(params[:game_id])
    @decks = Deck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @decks }
    end
  end

  def new
    #@article = Article.find(params[:article_id])
    #@comments = @articles.comments.find(params[:comment_id])
    #@repcomment = Repcomment.new

    # @game = Game.find(params[:game_id])
    @deck = Deck.new
    52.times do
      card = @deck.cards.build
    end
    @deck.cards.each_with_index do |c, id|
      c.value = VALUES[id % 13]
      c.suit = SUITS[id % 4]
    end
    @deck.game_id = params[:game_id]
    #  redirect_to @deck, notice: 'Deck was successfully start.'
  end

  def save_count
    @deck.count = @deck.cards.count
    @deck.save
  end

  def create
    @deck = Deck.new(params[:deck])
    update_game_status("started")
    respond_to do |format|
      if @deck.save
        format.html { redirect_to @deck, notice: 'Deck was successfully created.' }
        format.json { render json: @deck, status: :created, location: @deck }
      else
        format.html { render action: "new" }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /decks/1
  # GET /decks/1.json
  def show
    @deck = Deck.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deck }
    end
  end


  #def edit
  #  @deck = Deck.find(params[:id])
  #end
  #def update
  #  @deck = Deck.find(params[:id])
  #
  #  respond_to do |format|
  #    if @deck.update_attributes(params[:deck])
  #      format.html { redirect_to @deck, notice: 'Deck was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @deck.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /decks/1
  # DELETE /decks/1.json
  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy

    respond_to do |format|
      format.html { redirect_to decks_url }
      format.json { head :no_content }
    end
  end
end
#

#
#class CardLocal
#  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
#  SUITS = %w(Spade Heart Club Diamond)
#
#  attr_accessor :value, :suit
#
#  def initialize(id)
#    self.value = VALUES[id % 13]
#    self.suit = SUITS[id % 4]
#  end
#
##def show
##  @card = CardLocal.find(params[:id])
##end
##
#  def new
#    @card = CardLocal.new
#  end
#end
#def create
#  @card = CardLocal.new(params[:card])
#  @card.save
#end
#end
#class DeckLocal
#  attr_accessor :cards
#  def initialize
#    self.cards = (0..51).to_a.shuffle.collect { |id| Card.new(id) }
#  end
#end
