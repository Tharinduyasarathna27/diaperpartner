class PartnersController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
  end

  private

  def partner_params
    params.permit :email, :organization_id
  end
end
