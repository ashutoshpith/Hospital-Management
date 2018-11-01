class DoctortablesController < ApplicationController
  before_action :set_doctortable, only: [:show, :edit, :update, :destroy]

  # GET /doctortables
  # GET /doctortables.json
  def index
    @doctortables = Doctortable.all
  end

  # GET /doctortables/1
  # GET /doctortables/1.json
  def show
  end

  # GET /doctortables/new
  def new
    @doctortable = Doctortable.new
  end

  # GET /doctortables/1/edit
  def edit
  end

  # POST /doctortables
  # POST /doctortables.json
  def create
    @doctortable = Doctortable.new(doctortable_params)

    respond_to do |format|
      if @doctortable.save
        format.html { redirect_to @doctortable, notice: 'Doctortable was successfully created.' }
        format.json { render :show, status: :created, location: @doctortable }
      else
        format.html { render :new }
        format.json { render json: @doctortable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctortables/1
  # PATCH/PUT /doctortables/1.json
  def update
    respond_to do |format|
      if @doctortable.update(doctortable_params)
        format.html { redirect_to @doctortable, notice: 'Doctortable was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctortable }
      else
        format.html { render :edit }
        format.json { render json: @doctortable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctortables/1
  # DELETE /doctortables/1.json
  def destroy
    @doctortable.destroy
    respond_to do |format|
      format.html { redirect_to doctortables_url, notice: 'Doctortable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctortable
      @doctortable = Doctortable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctortable_params
      params.require(:doctortable).permit(:outpatient_id, :doctor_name, :doctor_sp)
    end
end
