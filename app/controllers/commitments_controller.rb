class CommitmentsController < ApplicationController
  
  def index
    @commitments = Commitment.all
    @sum = @commitments.sum(:amount)
  end
  
end
