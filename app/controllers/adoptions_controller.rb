class AdoptionsController < ApplicationController
  before_action :set_adoption, only: %i[ show edit update destroy ]

  # GET /adoptions or /adoptions.json
  def index
    @adoptions = Adoption.all
  end

  # GET /adoptions/1 or /adoptions/1.json
  def show
  end

  # GET /adoptions/new
  def new
    @adoption = Adoption.new
  end

  # GET /adoptions/1/edit
  def edit
  end

  # POST /adoptions or /adoptions.json
  def create
    @adoption = Adoption.new(adoption_params)

    respond_to do |format|
      if @adoption.save
        format.html { redirect_to adoption_url(@adoption), notice: "Adoption was successfully created." }
        format.json { render :show, status: :created, location: @adoption }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adoption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adoptions/1 or /adoptions/1.json
  def update
    respond_to do |format|
      if @adoption.update(adoption_params)
        format.html { redirect_to adoption_url(@adoption), notice: "Adoption was successfully updated." }
        format.json { render :show, status: :ok, location: @adoption }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adoption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adoptions/1 or /adoptions/1.json
  def destroy
    @adoption.destroy

    respond_to do |format|
      format.html { redirect_to adoptions_url, notice: "Adoption was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption
      @adoption = Adoption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adoption_params
      params.require(:adoption).permit(:name, :breed, :age, :details)
    end
end
