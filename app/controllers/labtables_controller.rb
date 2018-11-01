class LabtablesController < ApplicationController
  before_action :set_labtable, only: [:show, :edit, :update, :destroy]

  # GET /labtables
  # GET /labtables.json
  def index
    @labtables = Labtable.all
  end

  # GET /labtables/1
  # GET /labtables/1.json
  def show
  end

  # GET /labtables/new
  def new
    @labtable = Labtable.new
  end

  # GET /labtables/1/edit
  def edit
  end

  # POST /labtables
  # POST /labtables.json
  def create
    @labtable = Labtable.new(labtable_params)

    respond_to do |format|
      if @labtable.save
        format.html { redirect_to @labtable, notice: 'Labtable was successfully created.' }
        format.json { render :show, status: :created, location: @labtable }
      else
        format.html { render :new }
        format.json { render json: @labtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labtables/1
  # PATCH/PUT /labtables/1.json
  def update
    respond_to do |format|
      if @labtable.update(labtable_params)
        format.html { redirect_to @labtable, notice: 'Labtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @labtable }
      else
        format.html { render :edit }
        format.json { render json: @labtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labtables/1
  # DELETE /labtables/1.json
  def destroy
    @labtable.destroy
    respond_to do |format|
      format.html { redirect_to labtables_url, notice: 'Labtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labtable
      @labtable = Labtable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def labtable_params
      params.require(:labtable).permit(:doctortable_id,:pid, :dt, :category, :amount)
    end
end
