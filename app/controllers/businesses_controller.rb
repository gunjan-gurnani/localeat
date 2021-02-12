# frozen_string_literal: true

class BusinessesController < ApplicationController
  
  def index
  end

  def new
    @business = Business.new
    @business_types = Business::BUSINESS_TYPES
  end

  def create
    debugger
    params = clean_params
    @business = Business.new(name: params[:name], business_type: params[:business_type].to_i,
                             description: params[:description], opening_times: JSON.parse(params[:opening_times]))
    @business.save
    @location = Location.new(city: params[:city], street_address: params[:street_address], business_id: @business.id)
    @location.save ? create_success : create_failure
  end

  private

  def clean_params
    params.require(:business).permit(:id, :name, :business_type, :city,
                                     :street_address, :description, :opening_times)
  end

  def create_success
    flash[:success] = "Thank you for your submission!"
    redirect_to new_business_path
  end

  def create_failure
    flash[:failure] = "Sorry! We coudn't save your suggestion :( Try again later"
    redirect_to new_business_path
  end

end
