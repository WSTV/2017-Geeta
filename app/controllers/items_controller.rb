class ItemsController < ApplicationController

  # GET /items/admin
  # GET /items/admin.json
  def admin
    @items = Item.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end


  # GET /items
  # GET /items.json
  def index
    logger.info params
    if(params[:interest] == nil || params[:location] == nil)
      @items = Item.all
    else
      @items = Item.all.select{|i| i.concepts.select{|c| c.id == params[:interest].strip.to_i}.size > 0 && i.concepts.select{|c| c.id == params[:location].strip.to_i}.size > 0}
    end
    @item_link_ids = @items.map{|i| i.link}
    @item_titles = @items.map{|i| i.title}
    @item_descriptions = @items.map{|i| i.description}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /items/choose
  # GET /items/choose.json
  def choose
    @interests = Concept.all.select{|c| c.category == "Interest"}
    @locations = Concept.all.select{|l| l.category == "Location"}
    @businesses = Concept.all.select{|b| b.category == "Business"}

    respond_to do |format|
      format.html # choose.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = Item.new
    @interests = Concept.all.select{|c| c.category == "Interest"}
    @locations = Concept.all.select{|l| l.category == "Location"}
    @businesses = Concept.all.select{|b| b.category == "Business"}


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])
    logger.info params
    logger.info "just printed create params"
    # saving the id of the youtube video instead of the link
    if(params[:item] && params[:item][:link] && (params[:item][:link].include? "v=")) # youtube long url has been provided
      @item.link = (params[:item][:link].split('v=')[1]).split('&')[0]
    end
    if(params[:interests] && params[:locations])
      params[:interests].each do |interest|
        concept = Concept.find(interest)
        @item.concepts << concept
      end
      params[:locations].each do |location|
        concept = Concept.find(location)
        @item.concepts << concept
      end
    end
    logger.info @item
    logger.info @item.concepts
    respond_to do |format|
     if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end
end
