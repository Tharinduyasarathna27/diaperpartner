module ApplicationHelper
  def default_title_content
    if current_user
      current_user.email
    else
      "Diaper Partner"
    end
  end

  def active_class(name)
    name.include?(controller_name) ? 'active' : controller_name
  end

  def flash_class(level)
    case level
    when 'notice' then "alert alert-info"
    when 'success' then "alert alert-success"
    when 'error' then "alert alert-danger"
    when 'alert' then "alert alert-warning"
    end
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def meta_description(page_meta_description)
    content_for(:meta_description) { page_meta_description }
  end

  def heading(page_heading)
    content_for(:heading) { page_heading }
  end

  def humanize_boolean(input)
    input ||= ''
    case input.to_s.downcase
    when 't', 'true'
      'Yes'
    else
      'No'
    end
  end

  def css_for_boolean(input)
    if input
      'success'
    else
      'danger'
    end
  end

  def states
    STATES
  end

  def diaper_use
    DIAPER_USE
  end

  def funding_sources
    FUNDING_SOURCES
  end

  def diaper_sources
    DIAPER_SOURCES
  end

  DIAPER_USE = [
   'Emergency supplies for families (off site)',
   'Homeless shelter',
   'Domestic violence shelter',
   'On-site residential program',
   'Outreach',
   'Alcohol/Drug Recovery',
   'Daycare',
   'Foster Care',
   'Other'
  ].freeze

  FUNDING_SOURCES = [
    'Grants - Foundation',
    'Grants - State',
    'Grants - Federal',
    'Corporate Donations',
    'Individual Donations',
    'Other'
  ].freeze

  DIAPER_SOURCES = [
    'Purchase Retail',
    'Purchase Wholesale',
    'Diaper Drives',
    'Diaper Drives conducted by others',
    'Other'
  ]

  STATES = {
    'Alabama' => 'AL',
    'Alaska' => 'AK',
    'Arizona' => 'AZ',
    'Arkansas' => 'AR',
    'California' => 'CA',
    'Colorado' => 'CO',
    'Connecticut' => 'CT',
    'Delaware' => 'DE',
    'District Of Columbia' => 'DC',
    'Florida' => 'FL',
    'Georgia' => 'GA',
    'Hawaii' => 'HI',
    'Idaho' => 'ID',
    'Illinois' => 'IL',
    'Indiana' => 'IN',
    'Iowa' => 'IA',
    'Kansas' => 'KS',
    'Kentucky' => 'KY',
    'Louisiana' => 'LA',
    'Maine' => 'ME',
    'Maryland' => 'MD',
    'Massachusetts' => 'MA',
    'Michigan' => 'MI',
    'Minnesota' => 'MN',
    'Mississippi' => 'MS',
    'Missouri' => 'MO',
    'Montana' => 'MT',
    'Nebraska' => 'NE',
    'Nevada' => 'NV',
    'New Hampshire' => 'NH',
    'New Jersey' => 'NJ',
    'New Mexico' => 'NM',
    'New York' => 'NY',
    'North Carolina' => 'NC',
    'North Dakota' => 'ND',
    'Ohio' => 'OH',
    'Oklahoma' => 'OK',
    'Oregon' => 'OR',
    'Pennsylvania' => 'PA',
    'Rhode Island' => 'RI',
    'South Carolina' => 'SC',
    'South Dakota' => 'SD',
    'Tennessee' => 'TN',
    'Texas' => 'TX',
    'Utah' => 'UT',
    'Vermont' => 'VT',
    'Virginia' => 'VA',
    'Washington' => 'WA',
    'West Virginia' => 'WV',
    'Wisconsin' => 'WI',
    'Wyoming' => 'WY',
    '--' => '',
    'Armed Forces (Americas)' => 'AA',
    'Armed Forces (Europe, Canada, Middle East, Africa)' => 'AE',
    'Armed Forces (Pacific)' => 'AP',
    'American Samoa' => 'AS',
    'Federated States of Micronesia' => 'FM',
    'Guam' => 'GU',
    'Marshall Islands' => 'MH',
    'Northern Mariana Islands' => 'MP',
    'Palau' => 'PW',
    'Puerto Rico' => 'PR',
    'Virgin Islands' => 'VI'
  }.freeze
end
