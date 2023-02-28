class PublicController < ApplicationController
  def main
    @properties = Property.latest

    if params[:min_price].present? && params[:max_price].present?
      @properties = @properties.where(price: params[:min_price]..params[:max_price])
    end
  end
end
