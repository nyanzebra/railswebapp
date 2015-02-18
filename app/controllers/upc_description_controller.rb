class UpcDescriptionController < ApplicationController
  def index
  	@upcs = UpcDescription.all
  end
  def men
  	@upcs = UpcDescription.where("gender = 'men'")
  end
  def women
  	@upcs = UpcDescription.where("gender = 'women'")
  end
end
