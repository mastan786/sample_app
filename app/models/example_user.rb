class ExampleUser < ActiveRecord::Base
 validates :name,  presence: true
  validates :email, presence: true

   has_secure_password
  
require 'test_helper'
 attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
