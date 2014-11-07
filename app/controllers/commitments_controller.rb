class CommitmentsController < ApplicationController
  layout 'bootlayout'
  
  def index
    @commitments = Commitment.all
    @sum = @commitments.sum(:amount)
  end
  
end
