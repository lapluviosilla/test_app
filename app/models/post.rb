class Post < ActiveRecord::Base
  
  # attr_accessible :thing
  
  belongs_to :thing
  accepts_nested_attributes_for :thing, :allow_destroy => false
  
  validates_presence_of :title, :body
  validates_format_of :title, :with => /^[\d]+$/, :allow_blank => true
  #validates_length_of :body, :within => 3..20, :allow_blank => true
  #validates_acceptance_of :published, :accept => true
  
end
