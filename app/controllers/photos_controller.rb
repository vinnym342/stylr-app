class PhotosController < ApplicationController
  before_action :set_styleboard
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /photos
  # GET /photos.json
  def index
    @photos = @styleboard.photos
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @comment = Comment.new
    @comments = Comment.where(photo_id: @photo.id).order(:created_at)
  end

  # GET /photos/new
  def new
    @photo = Photo.new(styleboard: @styleboard,user: current_user)
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)
    @photo.styleboard = @styleboard
    @photo.location = photo_params[:location]
    @photo.user = current_user

    respond_to do |format|
      if @photo.save
        format.html { redirect_to [@photo.styleboard,@photo], notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to [@photo.styleboard,@photo], notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to styleboard_photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_styleboard
      @styleboard = Styleboard.find(params[:styleboard_id])
    end

    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:caption, :location)
      # params.require(:photo).permit(:id,:id)
    end
end
