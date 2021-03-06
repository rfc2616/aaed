class Species < ActiveRecord::Base
  has_paper_trail

  # this model is not web-serviceable
  attr_accessible

  has_many :species_range_state_countries
  has_many :range_states, :through => :species_range_state_countries, :source => 'country', :order => 'name'
  has_many :submissions

  def to_s
    scientific_name
  end
end
