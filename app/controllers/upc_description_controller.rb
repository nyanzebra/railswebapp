class UpcDescriptionController < ApplicationController
	respond_to :html, :json
  def index
  	@upcs = UpcDescription.all
  	respond_with @upcs
  end
  def men
  	@upcs = UpcDescription.where("gender = 'Men'")
  	respond_with @upcs
  end
end
