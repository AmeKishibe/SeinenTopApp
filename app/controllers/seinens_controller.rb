class SeinensController < ApplicationController
  before_action :set_seinen, only: %i[ show edit update destroy ]

  # GET /seinens or /seinens.json
  def index
    @seinens = Seinen.all
  end

  # GET /seinens/1 or /seinens/1.json
  def show
  end

  # GET /seinens/new
  def new
    @seinen = Seinen.new
  end

  # GET /seinens/1/edit
  def edit
  end

  # POST /seinens or /seinens.json
  def create
    @seinen = Seinen.new(seinen_params)

    respond_to do |format|
      if @seinen.save
        format.html { redirect_to seinen_url(@seinen), notice: "Seinen was successfully created." }
        format.json { render :show, status: :created, location: @seinen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seinen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seinens/1 or /seinens/1.json
  def update
    respond_to do |format|
      if @seinen.update(seinen_params)
        format.html { redirect_to seinen_url(@seinen), notice: "Seinen was successfully updated." }
        format.json { render :show, status: :ok, location: @seinen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seinen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seinens/1 or /seinens/1.json
  def destroy
    @seinen.destroy
    @notes.destroy

    respond_to do |format|
      format.html { redirect_to seinens_url, notice: "Seinen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seinen
      @seinen = Seinen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seinen_params
      params.require(:seinen).permit(:title, :article, :User_name)
    end
end
