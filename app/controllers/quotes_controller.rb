class QuotesController < ApplicationController
  def index
  	@quotes = Quote.all
  end

  def new
  	@quote = Quote.new
  end

   def show
    @quote = Quote.find(params[:id])
  end

  def edit
  	@quote = Quote.find(params[:id])
  end

  def destroy
  	Quote.find(params[:id]).destroy
  	redirect_to quotes_path
  end

  def create
  	if Quote.create(quote_params)
  		flash[:success] = "Thank you!!!"
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  private

  def quote_params
  	params.require(:quote).permit(:fname, :lname, :address, :service, :city, :description, :zip, :email, :complete, :state, :phone_num)
  end
end
