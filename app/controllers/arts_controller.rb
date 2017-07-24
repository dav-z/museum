class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]

  # GET /arts
  # GET /arts.json
  def index
    @arts = Art.all
  end

  # GET /arts/1
  # GET /arts/1.json
  def show
  end

  # GET /arts/new
  def new
    @art = Art.new
  end

  # for listing artwork from newest to oldest
  def self.recent
    self.order( id: :desc ).limit( num )
  end

  # GET /arts/1/edit
  def edit
  end

  # POST /arts
  # POST /arts.json
  def create
    @art = Art.new(art_params)
    if params[:art][:medium_ids]
      @art.media = Medium.where( id: params[:art][:medium_ids] )
    end
    # assigns a last edited by field for each artwork
    @art.user_id = current_user.id
    respond_to do |format|
      if @art.save
        format.html { redirect_to @art, notice: 'Art was successfully created.' }
        format.json { render :show, status: :created, location: @art }
      else
        format.html { render :new }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arts/1
  # PATCH/PUT /arts/1.json
  def update
    @art.user_id = current_user.id
    respond_to do |format|
      # if @art.update(art_params)
      # used for the media join table to update the arts with a checkbox option for multiple media
      @art.update_attributes(art_params)
      if params[:art][:medium_ids]
        @art.media = Medium.where( id: params[:art][:medium_ids] )
      end
      if @art.save
        format.html { redirect_to @art, notice: 'Art was successfully updated.' }
        format.json { render :show, status: :ok, location: @art }
      else
        format.html { render :edit }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arts/1
  # DELETE /arts/1.json
  def destroy
    @art.destroy
    respond_to do |format|
      format.html { redirect_to arts_url, notice: 'Art was successfully destroyed.', status: 303 }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art
      @art = Art.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_params
      params.require(:art).permit(:title, :description, :date, :type, :value, :artist_id, :user_id, :location_id, :avatar, :medium_ids)
    end
end
