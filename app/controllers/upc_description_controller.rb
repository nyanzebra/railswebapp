class UpcDescriptionController < ApplicationController
  def index
  	@upcs = UpcDescription.all
  end
end
