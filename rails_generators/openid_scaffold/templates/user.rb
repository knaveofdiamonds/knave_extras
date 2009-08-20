class <%= class_name %> < ActiveRecord::Base
  # name validation
  validates_length_of :name, :allow_nil => true, 
                             :in => 3..80, 
                             :message => "should be between 3 and 80 letters long"

  validates_format_of :name, :allow_nil => true, 
                             :with => /^[^\:;!~`\@\#\$%&*\{\}\[\]|\^\\\/\?><"]+$/, 
                             :message => "should be alphabetical"

  # Email validation
  validates_uniqueness_of :email, :allow_nil => true, :case_sensitive => false
  validates_length_of :email, :allow_nil => true, :in => 6..100, :message => "should be between 6 and 100 letters long"
  validates_format_of :email, :allow_nil => true, 
                             :with => /(?i-mx:\\A[A-Z0-9_\\.%\\+\\-]+@(?:[A-Z0-9\\-]+\\.)+(?:[A-Z]{2,4}|museum|travel)\\z)/, 
                             :message => "should look like an email address"
end
