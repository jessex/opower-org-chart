class EngineersController < ApplicationController
  # GET /engineers
  # GET /engineers.json
  def index
    @engineers = Engineer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @engineers }
    end
  end

  # GET /engineers/1
  # GET /engineers/1.json
  def show
    @engineer = Engineer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @engineer }
    end
  end

  # GET /engineers/new
  # GET /engineers/new.json
  def new
    @engineer = Engineer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @engineer }
    end
  end

  # GET /engineers/1/edit
  def edit
    @engineer = Engineer.find(params[:id])
  end

  # POST /engineers
  # POST /engineers.json
  def create
    @engineer = Engineer.new(params[:engineer])

    respond_to do |format|
      if @engineer.save
        format.html { redirect_to @engineer, notice: 'Engineer was successfully created.' }
        format.json { render json: @engineer, status: :created, location: @engineer }
      else
        format.html { render action: "new" }
        format.json { render json: @engineer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /engineers/1
  # PUT /engineers/1.json
  def update
    @engineer = Engineer.find(params[:id])

    respond_to do |format|
      if @engineer.update_attributes(params[:engineer])
        format.html { redirect_to @engineer, notice: 'Engineer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @engineer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engineers/1
  # DELETE /engineers/1.json
  def destroy
    @engineer = Engineer.find(params[:id])
    @engineer.destroy

    respond_to do |format|
      format.html { redirect_to engineers_url }
      format.json { head :no_content }
    end
  end
end
