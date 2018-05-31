class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :partner, index: true, type: :integer

      t.timestamps
    end
  end
end
