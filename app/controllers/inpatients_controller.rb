class InpatientsController < ApplicationController
  before_action :set_inpatient, only: [:show, :edit, :update, :destroy]

  # GET /inpatients
  # GET /inpatients.json
  def index
    @inpatients = Inpatient.all
  end

  # GET /inpatients/1
  # GET /inpatients/1.json
  def show
  end

  # GET /inpatients/new
  def new
    @inpatient = Inpatient.new
  end

  # GET /inpatients/1/edit
  def edit
  end

  # POST /inpatients
  # POST /inpatients.json
  def create
    @inpatient = Inpatient.new(inpatient_params)

    respond_to do |format|
      if @inpatient.save
        format.html { redirect_to @inpatient, notice: 'Inpatient was successfully created.' }
        format.json { render :show, status: :created, location: @inpatient }
      else
        format.html { render :new }
        format.json { render json: @inpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inpatients/1
  # PATCH/PUT /inpatients/1.json
  def update
    respond_to do |format|
      if @inpatient.update(inpatient_params)
        format.html { redirect_to @inpatient, notice: 'Inpatient was successfully updated.' }
        format.json { render :show, status: :ok, location: @inpatient }
      else
        format.html { render :edit }
        format.json { render json: @inpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inpatients/1
  # DELETE /inpatients/1.json
  def destroy
    @inpatient.destroy
    respond_to do |format|
      format.html { redirect_to inpatients_url, notice: 'Inpatient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inpatient
      @inpatient = Inpatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inpatient_params
      params.require(:inpatient).permit(:roomtable_id, :labtable_id ,:date_of_add, :date_of_dis, :advance)
    end
end
