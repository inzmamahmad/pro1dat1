class CommtsController < ApplicationController
  before_action :set_commt, only: %i[ show edit update destroy ]

  # GET /commts or /commts.json
  def index
    @commts = Commt.all
  end

  # GET /commts/1 or /commts/1.json
  def show
  end

  # GET /commts/new
  def new
    @commt = Commt.new
  end

  # GET /commts/1/edit
  def edit
  end

  # POST /commts or /commts.json
  def create
    @commt = Commt.new(commt_params)

    respond_to do |format|
      if @commt.save
        format.html { redirect_to @commt, notice: "Commt was successfully created." }
        format.json { render :show, status: :created, location: @commt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commts/1 or /commts/1.json
  def update
    respond_to do |format|
      if @commt.update(commt_params)
        format.html { redirect_to @commt, notice: "Commt was successfully updated." }
        format.json { render :show, status: :ok, location: @commt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commts/1 or /commts/1.json
  def destroy
    @commt.destroy
    respond_to do |format|
      format.html { redirect_to commts_url, notice: "Commt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commt
      @commt = Commt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commt_params
      params.require(:commt).permit(:content, :commentable_id, :commentable_type)
    end
end
