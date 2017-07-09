class SnfsController < ApplicationController
  before_action :set_snf, only: [:show, :edit, :update, :destroy]

  # GET /snfs
  # GET /snfs.json
  def index
    @snfs = Snf.order(rating: 'DESC')
  end

  # GET /snfs/1
  # GET /snfs/1.json
  def show
  end

  # GET /snfs/new
  def new
    @snf = Snf.new
  end

  # GET /snfs/1/edit
  def edit
  end

  # POST /snfs
  # POST /snfs.json
  def create
    @snf = Snf.new(snf_params)

    respond_to do |format|
      if @snf.save
        format.html { redirect_to @snf, notice: 'Snf was successfully created.' }
        format.json { render :show, status: :created, location: @snf }
      else
        format.html { render :new }
        format.json { render json: @snf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snfs/1
  # PATCH/PUT /snfs/1.json
  def update
    respond_to do |format|
      if @snf.update(snf_params)
        format.html { redirect_to @snf, notice: 'Snf was successfully updated.' }
        format.json { render :show, status: :ok, location: @snf }
      else
        format.html { render :edit }
        format.json { render json: @snf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snfs/1
  # DELETE /snfs/1.json
  def destroy
    @snf.destroy
    respond_to do |format|
      format.html { redirect_to snfs_url, notice: 'Snf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snf
      @snf = Snf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snf_params
      params.require(:snf).permit(:name, :number, :address, :contact, :rating, :link)
    end
end
