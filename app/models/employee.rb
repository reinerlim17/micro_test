class Employee < ActiveRecord::Base
  attr_accessible :address, :age, :birthday, :contact_number, :email, :name
end
