class BarsController < ApplicationController

before_filter :authenticate_user!
  def index
    @bars =  Bar.order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bars }
    end
  end

  def show
    @bar = Bar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bar }
    end
  end

  def new
    @bar = Bar.new
    # @bar = Bar.find_or_create_by(params[:name, :location, :longitude, :latitude])
    @bar = Bar.find_or_create_by_name_and_longitude_and_latitude(:name, :longitude, :latitude)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bar }
    end
  end

  def edit
    @bar = Bar.find(params[:id])
  end

  def create
    @bar = Bar.new(params[:bar])

    respond_to do |format|
      if @bar.save
        format.html { redirect_to :back, notice: 'Bar was successfully created.' }
        format.json { render json: @bar, status: :created, location: @bar }
      else
        format.html { render action: "new" }
        format.json { render json: @bar.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @bar = Bar.find(params[:id])

    respond_to do |format|
      if @bar.update_attributes(params[:bar])
        format.html { redirect_to @bar, notice: 'Bar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bar.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bar = Bar.find(params[:id])
    @bar.destroy

    respond_to do |format|
      format.html { redirect_to bars_url }
      format.json { head :no_content }
    end
  end
end

