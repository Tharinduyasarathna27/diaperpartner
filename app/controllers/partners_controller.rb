class PartnersController < ApiController
  def create
    # TODO This is terrible, but we haven't decided how it'll work yet...
    password_params = { password: 'password', password_confirmation: 'password' }
    Partner.create partner_params.merge password_params
    head :no_content
  end

  private

  def partner_params
    params.permit :email, :organization_id
  end
end
