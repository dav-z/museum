class StaticController < ApplicationController
  def index
  end
  def exhibits
    @locations = Location.all
  end
end
