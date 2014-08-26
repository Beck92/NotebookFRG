class BloknotsController < ApplicationController
  before_action :set_bloknot, only: [:show, :edit, :update, :destroy]

  # GET /bloknots
  # GET /bloknots.json
  def index
    @bloknots = Bloknot.all
  end

  # GET /bloknots/1
  # GET /bloknots/1.json
  def show
  end

  # GET /bloknots/new
  def new
    @bloknot = Bloknot.new
  end

  # GET /bloknots/1/edit
  def edit
  end

  # POST /bloknots
  # POST /bloknots.json
  def create
    @bloknot = Bloknot.new(bloknot_params)

    respond_to do |format|
      if @bloknot.save
        format.html { redirect_to @bloknot, notice: 'Bloknot was successfully created.' }
        format.json { render :show, status: :created, location: @bloknot }
      else
        format.html { render :new }
        format.json { render json: @bloknot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloknots/1
  # PATCH/PUT /bloknots/1.json
  def update
    respond_to do |format|
      if @bloknot.update(bloknot_params)
        format.html { redirect_to @bloknot, notice: 'Bloknot was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloknot }
      else
        format.html { render :edit }
        format.json { render json: @bloknot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloknots/1
  # DELETE /bloknots/1.json
  def destroy
    @bloknot.destroy
    respond_to do |format|
      format.html { redirect_to bloknots_url, notice: 'Bloknot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloknot
      @bloknot = Bloknot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bloknot_params
      params.require(:bloknot).permit(:NameOfBkoknot)
    end
end
