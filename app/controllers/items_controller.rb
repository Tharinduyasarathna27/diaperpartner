class ItemsController < ApiController
  def create
    Item.create item_params
    head :no_content
  end

  private

  def item_params
    params.permit :name, :category, :barcode_count, :organization_id
  end
end

