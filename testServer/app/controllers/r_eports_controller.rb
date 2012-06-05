class REportsController < ApplicationController
  # GET /r_eports
  # GET /r_eports.json
  def index
    @r_eports = REport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @r_eports }
    end
  end

  # GET /r_eports/1
  # GET /r_eports/1.json
  def show
    @r_eport = REport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @r_eport }
    end
  end

  # GET /r_eports/new
  # GET /r_eports/new.json
  def new
    @r_eport = REport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @r_eport }
    end
  end

  # GET /r_eports/1/edit
  def edit
    @r_eport = REport.find(params[:id])
  end

  # POST /r_eports
  # POST /r_eports.json
  def create
    @r_eport = REport.new(params[:r_eport])

    respond_to do |format|
      if @r_eport.save
        format.html { redirect_to @r_eport, notice: 'R eport was successfully created.' }
        format.json { render json: @r_eport, status: :created, location: @r_eport }
      else
        format.html { render action: "new" }
        format.json { render json: @r_eport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /r_eports/1
  # PUT /r_eports/1.json
  def update
    @r_eport = REport.find(params[:id])

    respond_to do |format|
      if @r_eport.update_attributes(params[:r_eport])
        format.html { redirect_to @r_eport, notice: 'R eport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @r_eport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_eports/1
  # DELETE /r_eports/1.json
  def destroy
    @r_eport = REport.find(params[:id])
    @r_eport.destroy

    respond_to do |format|
      format.html { redirect_to r_eports_url }
      format.json { head :no_content }
    end
  end
end
