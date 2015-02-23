class UpcDescriptionsController < ApplicationController
  def index
    if params[:search]
      @upcs = UpcDescription.search(params[:search])
    else
      @upcs = UpcDescription.all
    end
  end
  def show
    @upc = UpcDescription.find(params[:id])
  end
end
