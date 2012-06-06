class HotspotsController < ApplicationController
  # GET /hotspots
  # GET /hotspots.json
  def index
    @hotspots = Hotspot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotspots }
    end
  end

  # GET /hotspots/1
  # GET /hotspots/1.json
  def show
    @hotspot = Hotspot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotspot }
    end
  end

  # GET /hotspots/new
  # GET /hotspots/new.json
  def new
    @hotspot = Hotspot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotspot }
    end
  end

  # GET /hotspots/1/edit
  def edit
    @hotspot = Hotspot.find(params[:id])
  end

  # POST /hotspots
  # POST /hotspots.json
  def create
    @hotspot = Hotspot.new(params[:hotspot])

    respond_to do |format|
      if @hotspot.save
        format.html { redirect_to @hotspot, notice: 'Hotspot was successfully created.' }
        format.json { render json: @hotspot, status: :created, location: @hotspot }
      else
        format.html { render action: "new" }
        format.json { render json: @hotspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotspots/1
  # PUT /hotspots/1.json
  def update
    @hotspot = Hotspot.find(params[:id])

    respond_to do |format|
      if @hotspot.update_attributes(params[:hotspot])
        format.html { redirect_to @hotspot, notice: 'Hotspot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotspots/1
  # DELETE /hotspots/1.json
  def destroy
    @hotspot = Hotspot.find(params[:id])
    @hotspot.destroy

    respond_to do |format|
      format.html { redirect_to hotspots_url }
      format.json { head :no_content }
    end
  end
end
