class PagesController < ApplicationController
  before_action :authenticate_partner!

  def home; end
end
