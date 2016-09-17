class LibraryMember < ApplicationRecord
  attr_accessor :password
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :presence =>true,
            :length => {  :maximum   => 50 }
  validates :email, :presence => true,
            :format => {:with => email_regex },
            :uniqueness  => {:case_sensitive => false}
  validates :password, :presence =>true,
            :confirmation => true,
            :length  => {:within => 6..40 }

  def self.authenticate(email,passwordd)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.password = passwordd
  end


end
