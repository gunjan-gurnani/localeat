# frozen_string_literal: true

class BusinessesController < ApplicationController
  
  def new
    @business = Business.new
    @location = Location.new
    @business_types = Business::BUSINESS_TYPES
  end

  def create
    params = clean_params
    @business = Business.new(name: params[:name], business_type: params[:business_type].to_i,
                             description: params[:description])
    @business.save
    @location = Location.new(city: params[:city], street_address: params[:street_address], business_id: @business.id)
    @location.save ? create_success : create_failure
  end

  private

  def clean_params
    params.require(:business).permit(:id, :name, :business_type, :city,
                                     :street_address, :description)
  end

  def create_success
    flash[:success] = "Thank you for your submission!"
    redirect_to root_path
  end

  def create_failure
    flash[:danger] = "Sorry! We coudn't save your suggestion, try again later."
    redirect_to root_path
  end

end
