class AddRestOfFieldsToPartner < ActiveRecord::Migration[5.2]
  def change
    change_table :partners do |t|
      t.string :distributor_type
      t.string :agency_type
      t.string :proof_of_agency_status
      t.text :agency_mission
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :website
      t.string :facebook
      t.string :twitter
      t.date :founded
      t.string :form_990
      t.string :program_name
      t.text :program_description
      t.integer :program_age
      t.boolean :case_management
      t.boolean :evidence_based
      t.text :evidence_based_description
      t.text :program_client_improvement
      t.string :diaper_use
      t.string :other_diaper_use
      t.boolean :currently_provide_diapers
      t.boolean :turn_away_child_care
      t.string :program_address1
      t.string :program_address2
      t.string :program_city
      t.string :program_state
      t.string :program_zip_code
      t.integer :max_serve
      t.text :incorporate_plan
      t.boolean :responsible_staff_position
      t.boolean :storage_space
      t.text :describe_storage_space
      t.boolean :trusted_pickup
      t.boolean :income_requirement_max
      t.boolean :serve_income_circumstances
      t.boolean :income_verification
      t.boolean :internal_db
      t.boolean :maac
      t.integer :population_black
      t.integer :population_white
      t.integer :population_hispanic
      t.integer :population_asian
      t.integer :population_american_indian
      t.integer :population_island
      t.integer :population_multi_racial
      t.integer :population_other
      t.string :zips_served
      t.boolean :at_fpl_or_below
      t.boolean :above_1_2_times_fpl
      t.boolean :greater_2_times_fpl
      t.boolean :poverty_unknown
      t.string :ages_served
      t.string :executive_director_phone
      t.string :executive_director_email
      t.string :program_contact_phone
      t.string :program_contact_mobile
      t.string :program_contact_email
      t.string :pick_up_method
      t.string :pick_up_phone
      t.string :pick_up_email
      t.string :distribution_times
      t.string :new_client_times
      t.string :more_docs_required
      t.string :sources_of_funding
      t.string :sources_of_diapers
      t.string :diaper_budget
      t.string :diaper_funding_source
      t.string :signature
   end
  end
end
