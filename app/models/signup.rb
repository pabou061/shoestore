
class Signup < ActiveRecord::Base

has_secure_password

self.table_name = "shoestore.client"

end
