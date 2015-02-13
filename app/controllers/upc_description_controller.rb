class UpcDescriptionController < ApplicationController
  def index
  	@upcs = UpcDescription.all
  end
  def men
  	@upcs = UpcDescription.where("gender = 'Men'")
  end
end
