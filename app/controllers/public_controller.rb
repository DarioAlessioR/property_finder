class PublicController < ApplicationController
  def main
    @properties = Property.latest

    if params[:min_price].present? && params[:max_price].present?
      @properties = @properties.where(price: params[:min_price]..params[:max_price])
    end

    if params[:min_price].present? && params[:max_price].blank?
      @properties = @properties.where(price: params[:min_price]..params[9999999999999999])
    end

    if params[:min_price].blank? && params[:max_price].present?
      @properties = @properties.where(price: params[0]..params[:max_price])
    end

    if params[:min_rooms].present? && params[:max_rooms].present?
      @properties = @properties.where(rooms: params[:min_rooms]..params[:max_rooms])
    end

    if params[:min_rooms].present? && params[:max_rooms].blank?
      @properties = @properties.where(rooms: params[:min_rooms]..params[9999999999999999])
    end

    if params[:min_rooms].blank? && params[:max_rooms].present?
      @properties = @properties.where(rooms: params[0]..params[:max_rooms])
    end

    if params[:min_bathrooms].present? && params[:max_bathrooms].present?
      @properties = @properties.where(bathrooms: params[:min_bathrooms]..params[:max_bathrooms])
    end

    if params[:min_bathrooms].present? && params[:max_bathrooms].blank?
      @properties = @properties.where(bathrooms: params[:min_bathrooms]..params[9999999999999999])
    end

    if params[:min_bathrooms].blank? && params[:max_bathrooms].present?
      @properties = @properties.where(bathrooms: params[0]..params[:max_bathrooms])
    end

    if params[:min_area].present? && params[:max_area].present?
      @properties = @properties.where(area: params[:min_area]..params[:max_area])
    end

    if params[:min_area].present? && params[:max_area].blank?
      @properties = @properties.where(area: params[:min_area]..params[9999999999999999])
    end

    if params[:min_area].blank? && params[:max_area].present?
      @properties = @properties.where(area: params[0]..params[:max_area])
    end

    if params[:kind].present?
      @properties = @properties.where(kind: params[:kind])
    end

    if params[:city].present?
      @properties = @properties.where(city: params[:city])
    end

    if params[:zone].present?
      @properties = @properties.where(zone: params[:zone])
    end
    



  end
end
