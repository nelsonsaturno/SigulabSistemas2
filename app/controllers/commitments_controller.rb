class CommitmentsController < ApplicationController
  layout 'bootlayout'
  
  def index
    @commitments = Commitment.all.order("date ASC")
    @sum = @commitments.sum(:amount)
  end

  def show
    @commitment = Commitment.find(params[:id])
  end
  
  def new
    @commitment = Commitment.new
    @labs = Lab.all
  end
  
  def create
    # Check Date
    unless params[:commitment].nil?
      begin
        params[:commitment][:date] = DateTime.parse(params[:commitment][:date])
      rescue ArgumentError
        params[:commitment][:date] = nil
      end
    end
    
    @commitment = Commitment.new(commitment_params)
    
    if @commitment.save
      redirect_to action: 'index'
    else
      @labs = Lab.all
      render 'new'
    end
  end
  
  def edit
    @commitment = Commitment.find(params[:id])
    @labs = Lab.all
  end
  
  def update
    # Check Date
    unless params[:commitment].nil?
      begin
        params[:commitment][:date] = DateTime.parse(params[:commitment][:date])
      rescue ArgumentError
        params[:commitment][:date] = nil
      end
    end
    
    @commitment = Commitment.find(params[:id])
    
    if @commitment.update_attributes(commitment_params)
      redirect_to action: 'index'
    else
      @labs = Lab.all
      render 'edit'
    end
  end
  
  private
  
    def commitment_params
      params.require(:commitment).permit(:lab_id, :sae_code, :recipient, :amount, :description, :date, :code, :observations, :document)
    end
  
end
