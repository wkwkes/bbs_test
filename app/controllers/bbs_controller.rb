class BbsController < ApplicationController
  before_action :set_bb, only: [:show, :edit, :update, :destroy]

  # GET /bbs
  # GET /bbs.json
  def index
    @bbs = Bb.all
  end

  # GET /bbs/1
  # GET /bbs/1.json
  def show
  end

  # GET /bbs/new
  def new
    @bb = Bb.new
  end

  # GET /bbs/1/edit
  def edit
  end

  # POST /bbs
  # POST /bbs.json
  def create
    @bb = Bb.new(bb_params)

    respond_to do |format|
      if @bb.save
        format.html { redirect_to @bb, notice: '正しく投稿されました' }
        format.json { render :show, status: :created, location: @bb }
      else
        format.html { render :new }
        format.json { render json: @bb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bbs/1
  # PATCH/PUT /bbs/1.json
  def update
    respond_to do |format|
      if @bb.update(bb_params)
        format.html { redirect_to @bb, notice: '正しく更新されました' }
        format.json { render :show, status: :ok, location: @bb }
      else
        format.html { render :edit }
        format.json { render json: @bb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bbs/1
  # DELETE /bbs/1.json
  def destroy
    @bb.destroy
    respond_to do |format|
      format.html { redirect_to bbs_url, notice: "正しく削除されました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bb
      @bb = Bb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bb_params
      params.require(:bb).permit(:name, :comment, :commented)
    end
  
end
