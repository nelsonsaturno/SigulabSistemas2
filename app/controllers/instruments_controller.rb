class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]

  # GET /instruments
  # GET /instruments.json
  def index
    @instruments = Instrument.all
  	if params[:search]
  		@instruments = Instrument.where(:showable => true).search(params[:search])
  		@instruments_all = Instrument.search(params[:search])
  	else
  		@instruments = Instrument.where(:showable => true).all.order('created_at DESC')
  		@instruments_all = Instrument.all.order('created_at DESC')
  	end
  end

  def index2
    @instruments = Instrument.all
    if params[:search]
      @instruments = Instrument.where(:showable => true).search(params[:search])
      @instruments_all = Instrument.search(params[:search])
    else
      @instruments = Instrument.where(:showable => true).all.order('created_at DESC')
      @instruments_all = Instrument.all.order('created_at DESC')
    end
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
  end

  # GET /instruments/new
  def new
    @instrument = Instrument.new
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @instrument = Instrument.new(instrument_params)

    respond_to do |format|
      if @instrument.save
        format.html { redirect_to @instrument, notice: 'Instrumento fue creado de forma exitosa.' }
        format.json { render :show, status: :created, location: @instrument }
      else
        format.html { render :new }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(instrument_params)
        format.html { redirect_to @instrument, notice: 'Instrumento fue actualizado de forma exitosa.' }
        format.json { render :show, status: :ok, location: @instrument }
      else
        format.html { render :edit }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @instrument.destroy
    respond_to do |format|
      format.html { redirect_to instruments_url, notice: 'Instrumento fue eliminado de forma exitosa.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_params
      params.require(:instrument).permit(:name, :brand, :model, :measurement_unit, :capacity, :material, :status, :location, :last_calibration, :responsible, :national_good, :investigation, :teaching, :extention, :management, :adquisition_date, :buy_order, :cost, :bill, :dependency)
    end
end
