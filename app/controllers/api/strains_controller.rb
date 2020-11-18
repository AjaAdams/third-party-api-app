class Api::StrainsController < ApplicationController
  def index
    response = HTTP.get("http://strainapi.evanbusse.com/#{Rails.application.credentials.strains_api[:api_key]}/strains/search/name/#{params[:search]}")
    render json: response.parse
  end
end
