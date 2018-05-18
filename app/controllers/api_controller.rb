class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :api_authenticate

  private

  def api_authenticate
    head(:unauthorized) unless autentic_access_id? && authentic_secret_key?
  end

  def autentic_access_id?
    ApiAuth.access_id(request) == 'diaperbase'
  end

  def authentic_secret_key?
    ApiAuth.authentic? request, ENV['DIAPERBASE_SECRET_KEY']
  end
end


