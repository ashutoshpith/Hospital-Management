class OutpatientsController < ApplicationController
  before_action :set_outpatient, only: [:show, :edit, :update, :destroy]

  # GET /outpatients
  # GET /outpatients.json
  def index
    @outpatients = Outpatient.all
  end

  # GET /outpatients/1
  # GET /outpatients/1.json
  def show
  end

  # GET /outpatients/new
  def new
    @outpatient = Outpatient.new
  end

  # GET /outpatients/1/edit
  def edit
  end

  # POST /outpatients
  # POST /outpatients.json
  def create
    @outpatient = Outpatient.new(outpatient_params)

    respond_to do |format|
      if @outpatient.save
        format.html { redirect_to @outpatient, notice: 'Outpatient was successfully created.' }
        format.json { render :show, status: :created, location: @outpatient }
      else
        format.html { render :new }
        format.json { render json: @outpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outpatients/1
  # PATCH/PUT /outpatients/1.json
  def update
    respond_to do |format|
      if @outpatient.update(outpatient_params)
        format.html { redirect_to @outpatient, notice: 'Outpatient was successfully updated.' }
        format.json { render :show, status: :ok, location: @outpatient }
      else
        format.html { render :edit }
        format.json { render json: @outpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outpatients/1
  # DELETE /outpatients/1.json
  def destroy
    @outpatient.destroy
    respond_to do |format|
      format.html { redirect_to outpatients_url, notice: 'Outpatient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outpatient
      @outpatient = Outpatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outpatient_params
      params.require(:outpatient).permit(:labtable_id,:dt)
    end
end
