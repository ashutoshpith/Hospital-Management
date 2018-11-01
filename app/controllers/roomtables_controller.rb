class RoomtablesController < ApplicationController
  before_action :set_roomtable, only: [:show, :edit, :update, :destroy]

  # GET /roomtables
  # GET /roomtables.json
  def index
    @roomtables = Roomtable.all
  end

  # GET /roomtables/1
  # GET /roomtables/1.json
  def show
  end

  # GET /roomtables/new
  def new
    @roomtable = Roomtable.new
  end

  # GET /roomtables/1/edit
  def edit
  end

  # POST /roomtables
  # POST /roomtables.json
  def create
    @roomtable = Roomtable.new(roomtable_params)

    respond_to do |format|
      if @roomtable.save
        format.html { redirect_to @roomtable, notice: 'Roomtable was successfully created.' }
        format.json { render :show, status: :created, location: @roomtable }
      else
        format.html { render :new }
        format.json { render json: @roomtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomtables/1
  # PATCH/PUT /roomtables/1.json
  def update
    respond_to do |format|
      if @roomtable.update(roomtable_params)
        format.html { redirect_to @roomtable, notice: 'Roomtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @roomtable }
      else
        format.html { render :edit }
        format.json { render json: @roomtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomtables/1
  # DELETE /roomtables/1.json
  def destroy
    @roomtable.destroy
    respond_to do |format|
      format.html { redirect_to roomtables_url, notice: 'Roomtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomtable
      @roomtable = Roomtable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomtable_params
      params.require(:roomtable).permit(:inpatient_id,:room_no, :room_type, :status)
    end
end
