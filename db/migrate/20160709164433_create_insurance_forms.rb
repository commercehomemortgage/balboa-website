class CreateInsuranceForms < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :type, index: true
      t.string :name_of_insured
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :gender
      t.string :height
      t.string :weight
      t.string :phone
      t.string :email
      t.string :street_address
      t.string :street_address2
      t.string :city
      t.string :zipcode
      t.string :current_policy
      t.text :additional_info
      t.string :interested_in_life_insurance
      t.timestamps

      # PROPERTY SPECIFIC
      t.string :property_type_of_home
      t.string :property_occupancy_type
      t.string :property_dogs_on_property
      t.string :property_pool_or_hot_tub
      # AUTO SPECIFIC
      t.string :auto_current_insurance_carrier
      t.string :auto_current_insurance_expires
      t.string :auto_bodily_injury_per_person
      t.string :auto_bodily_injury_per_accident
      t.string :auto_property_damage
      t.string :auto_roadside_assistance
      t.string :auto_rental_car
      t.string :auto_comprehensive_deductible
      t.string :auto_collision_deductible
      t.string :auto_discounts # multi select
      # COMMERCIAL SPECIFIC
      t.string :commercial_business_type
      t.string :commercial_type_of_insurance # multi select
      # LIFE SPECIFIC
      t.string :life_tobacco_used
      t.string :life_term
      t.string :life_coverage_amount
      # HEALTH SPECIFIC
      t.string :health_self_employed
      t.string :health_expected_annual_household_income
      t.string :health_number_of_people_in_household
      t.string :health_anyone_have_major_health_conditions
      t.string :health_major_life_event_in_past_thirty_days
      # MOTORCYCLE - SAME AS AUTO
      # FLOOD SPECIFIC
      t.string :flood_type_of_home
      t.string :flood_is_home_over_water
      t.string :flood_building_purpose
      t.string :flood_is_primary_home
      # BOAT/WATERCRAFT SPECIFIC
      t.string :boat_year
      t.string :boat_make
      t.string :boat_model
      t.string :boat_year_purchased
      t.string :boat_location_zipcode
      t.string :boat_usage
      # CONDO SPECIFIC
      t.string :condo_number_of_units
      t.string :condo_exterior_siding
      t.string :condo_within_five_minutes_of_fire_stations
      t.string :condo_within_one_thousand_feet_of_fire_hydrant
      t.string :condo_property_usage
      t.string :condo_own_dogs
      t.string :condo_number_of_full_time_employees
      t.string :condo_number_of_people_living_in_unit
      t.string :condo_are_any_policy_holders_retired
      # RENTER SPECIFIC
      t.string :renter_number_of_units
      t.string :renter_personal_property_coverage
      t.string :renter_own_dogs
      t.string :renter_number_of_people_living_in_unit
      t.string :renter_number_of_full_time_employees
      t.string :render_are_any_policy_holders_retired
      # JEWELRY
      t.string :jewelry_estimated_value
      t.string :jewelry_zip_code
    end

    create_table :drivers do |t|
      t.integer :quote_id, index: true, null: false
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :marital_status
      t.string :date_of_birth
      t.string :license_number

      t.timestamps
    end

    create_table :vehicles do |t|
      t.integer :quote_id, index: true, null: false
      t.string :vin
      t.string :usage
      t.string :approximate_miles_a_day
      t.string :driver_name

      t.timestamps
    end
  end
end
