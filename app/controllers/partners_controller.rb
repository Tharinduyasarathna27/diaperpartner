class PartnersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :api_authenticate

  def create
    # TODO This is terrible, but we haven't decided how it'll work yet...
    password_params = { password: 'password', password_confirmation: 'password' }
    Partner.create partner_params.merge password_params
    head :no_content
  end

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

  def partner_params
    params.permit :email
  end
end
