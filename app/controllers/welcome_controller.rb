# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @search = Business.ransack(params[:q])
    @businesses = @search.result(distinct: true).includes(:location)
  end
end
