class Partner < ApplicationRecord
  validates :name, presence: true
  has_one_attached :scan_990
  has_one_attached :proof_of_agency_status

  REAL_FIELDS = %i[name executive_director_name program_contact_name pick_up_name].freeze
  JSON_FIELDS = %i[distributor_type agency_type proof_of_agency_status agency_mission address1 address2 city
                    state zip_code website facebook twitter founded form_990 scan_990 program_name program_description
                    program_age case_management evidence_based evidence_based_description program_client_improvement
                    diaper_use other_diaper_use currently_provide_diapers turn_away_child_care program_address1
                    program_address2 program_city program_state program_zip_code max_serve incorporate_plan
                    responsible_staff_position storage_space describe_storage_space trusted_pickup
                    income_requirement_desc serve_income_circumstances income_verification internal_db maac
                    population_black population_white population_hispanic population_asian population_american_indian
                    population_island population_multi_racial population_other zips_served at_fpl_or_below
                    above_1_2_times_fpl greater_2_times_fpl poverty_unknown ages_served
                    executive_director_phone executive_director_email program_contact_phone
                    program_contact_mobile program_contact_email pick_up_method pick_up_phone
                    pick_up_email distribution_times new_client_times more_docs_required sources_of_funding
                    sources_of_diapers diaper_budget diaper_funding_source signature].freeze
  ALL_FIELDS = (REAL_FIELDS + JSON_FIELDS).freeze

  JSON_FIELDS.each do |field_name|
    define_method field_name do
      data[field_name.to_s]
    end

    define_method "#{field_name}=" do |value|
      data[field_name.to_s] = value
    end
  end

  def data
    application_data ||= {}
  end
end
