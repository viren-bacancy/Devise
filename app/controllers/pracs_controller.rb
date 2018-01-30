class PracsController < ApplicationController
  before_action :authenticate_user!, only: :new

  before_action :set_prac, only: [:show, :edit, :update, :destroy]

  # GET /pracs
  # GET /pracs.json
  def index
    @pracs = Prac.all
  end

  # GET /pracs/1
  # GET /pracs/1.json
  def show
  end

  # GET /pracs/new
  def new
    @prac = Prac.new
  end

  # GET /pracs/1/edit
  def edit
  end

  # POST /pracs
  # POST /pracs.json
  def create
    @prac = Prac.new(prac_params)

    respond_to do |format|
      if @prac.save
        format.html { redirect_to @prac, notice: 'Prac was successfully created.' }
        format.json { render :show, status: :created, location: @prac }
      else
        format.html { render :new }
        format.json { render json: @prac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pracs/1
  # PATCH/PUT /pracs/1.json
  def update
    respond_to do |format|
      if @prac.update(prac_params)
        format.html { redirect_to @prac, notice: 'Prac was successfully updated.' }
        format.json { render :show, status: :ok, location: @prac }
      else
        format.html { render :edit }
        format.json { render json: @prac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pracs/1
  # DELETE /pracs/1.json
  def destroy
    @prac.destroy
    respond_to do |format|
      format.html { redirect_to pracs_url, notice: 'Prac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prac
      @prac = Prac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prac_params
      params.require(:prac).permit(:name)
    end
end
