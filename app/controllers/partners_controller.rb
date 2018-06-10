class PartnersController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    @partner = Partner.new
  end

  def create
    real_fields = partner_params.slice(*Partner::REAL_FIELDS)
    json_fields = partner_params.slice(*Partner::JSON_FIELDS)
    @partner = Partner.new(real_fields.merge(application_data: json_fields.to_json))
    if @partner.save
      flash[:notice] = "Application saved"
    else
      render :new
    end
  end

  private

  def partner_params
    params.permit *Partner::ALL_FIELDS
  end
end
