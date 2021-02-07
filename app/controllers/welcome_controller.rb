# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @search = Business.ransack(params[:q])
    if params[:q].present? && params[:q].values.reject(&:blank?).any?
      @businesses = @search.result(distinct: true).includes(:location)
    end
  end
end
