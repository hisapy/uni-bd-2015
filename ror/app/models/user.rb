class User < ActiveRecord::Base
  validates_length_of :first_name, :last_name, in: 2..45
  validates_length_of :username, in: 4..24
end
