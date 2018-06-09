class Diaperbanks::BaseController < ApplicationController
  before_action :load_diaper_bank

  private

  def load_diaper_bank
    @diaper_bank = current_user.diaper_bank
    if @diaper_bank.nil?
      flash[:notice] = 'Could not find a diaper bank for you!'
      sign_out_and_redirect(current_user) and return
    end
  end
end
