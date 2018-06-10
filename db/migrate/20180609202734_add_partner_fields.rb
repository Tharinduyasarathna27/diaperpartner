class AddPartnerFields < ActiveRecord::Migration[5.1]
  def change
    change_table :partners do |t|
      t.references :diaper_bank
      t.string :executive_director_name
      t.string :program_contact_name
      t.string :pick_up_name
      t.text :application_data
      t.string :status, nil: false, default: 'pending'
    end
  end
end
