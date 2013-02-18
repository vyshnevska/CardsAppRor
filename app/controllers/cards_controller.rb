class CardsController < ApplicationController

  #VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  #SUITS = %w(Spade Heart Club Diamond)

  #attr_accessor :value, :suit, :id

  #def initialize (id)
  #  self.value = VALUES[id % 13]
  #  self.suit = SUITS[id % 4]
  #end
  def new
    #@card = (0..11).to_a.shuffle.collect { |id| Card.new(id) }
    #@cards_attributes = (0..11).to_a.shuffle.collect { |id| @card.match(id) }
    #self.value = VALUES[id % 13]
    #self.suit = SUITS[id % 4]
  end

  def create
   #@deck = Deck.find(params[:deck_id])
  # (0..11).to_a.shuffle.collect  do
      # |id| Card.new(id)
   #    @card =  @deck.cards.create(params[:card])
  # end
   #@deck.cards = (0..11).to_a.shuffle.collect { |id| Card.new(id) }
   # @card =  @deck.cards.create(params[:card])
    #@card =  @deck.cards.create(params[:card])
    #@deck.cards = (0..11).to_a.shuffle.collect { |id| @deck.cards.new(params[id]) }
  # @deck.cards.each do |c|
   #  c.save
   # end
 #  redirect_to deck_path(@deck) , notice: 'Card was successfully created.'
  #  @card.save
  end
  def destroy
    #@deck = Deck.find(params[:deck_id])
    #@card =  @deck.cards.find(params[:id])
    #@card.destroy
    #redirect_to deck_path(@deck)
  end
#  def show_card
#    if self
#      puts "Card: #{self.value}, #{self.suit}"
#
#    else
#      puts "An empty element"
#    end
#  end
#
#  def index
#    @cards = Card.all
#
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @cards }
#    end
#  end
#  def new
#    @card = Card.new
#  end
#
#  def create
#    @card = Card.new(params[:card])
#    @card.save
#  end
#  # GET /cards/1
#  # GET /cards/1.json
#  #def show
#  #  @card = Card.find(params[:id])
#  #
#  #  respond_to do |format|
#  #    format.html # show.html.erb
#  #    format.json { render json: @card }
#  #  end
#  #end
#  #
#  #
#  ## GET /cards/new
#  ## GET /cards/new.json
#  #def new
#  #  @card = Card.new
#  #
#  #  respond_to do |format|
#  #    format.html # new.html.erb
#  #    format.json { render json: @card }
#  #  end
#  #end
#
#  # GET /cards/1/edit
#  def edit
#    @card = Card.find(params[:id])
#  end
#
#  # POST /cards
#  # POST /cards.json
#  #def create
#  #  @card = Card.new(params[:card])
#  #
#  #  respond_to do |format|
#  #    if @card.save
#  #      format.html { redirect_to @card, notice: 'Card was successfully created.' }
#  #      format.json { render json: @card, status: :created, location: @card }
#  #    else
#  #      format.html { render action: "new" }
#  #      format.json { render json: @card.errors, status: :unprocessable_entity }
#  #    end
#  #  end
#  #end
#
#  # PUT /cards/1
#  # PUT /cards/1.json
#  def update
#    @card = Card.find(params[:id])
#
#    respond_to do |format|
#      if @card.update_attributes(params[:card])
#        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @card.errors, status: :unprocessable_entity }
#      end
#    end
#  end
#
#  # DELETE /cards/1
#  # DELETE /cards/1.json
#  def destroy
#    @card = Card.find(params[:id])
#    @card.destroy
#
#    respond_to do |format|
#      format.html { redirect_to cards_url }
#      format.json { head :no_content }
#    end
#  end



end
