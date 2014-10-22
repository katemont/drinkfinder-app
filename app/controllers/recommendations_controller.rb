class RecommendationsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    if params[:tag]
      @recommendations = Recommendation.tagged_with(params[:tag])
    else
      @recommendations = Recommendation.all
      # @recommendations = Recommendation.order("created_at DESC").limit(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recommendations }
    end
  end
end

  def show
    @recommendation = Recommendation.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recommendation }
    end
  end

  def new
    @recommendation = Recommendation.new
    @bars = Bar.all
  
    @recommendation.user_id = current_user.id if current_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recommendation }
    end
  end

  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def create
    @bar = Bar.find_or_create_by_location_and_name(location: params[:autocomplete], name: params[:name])
    @recommendation = current_user.recommendations.new(bar_id: @bar.id, review: params[:recommendation][:review], tag_list: params[:recommendation][:tag_list])

    respond_to do |format|
      if @recommendation.save
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully created.' }
        format.json { render json: @recommendation, status: :created, location: @recommendation }
      else
        format.html { render action: "new" }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @recommendation = Recommendation.find(params[:id])

    respond_to do |format|
      if @recommendation.update_attributes(params[:recommendation])
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy

    respond_to do |format|
      format.html { redirect_to recommendations_url }
      format.json { head :no_content }
    end
  end
end
