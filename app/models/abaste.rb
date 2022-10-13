class Abaste < ActiveRecord::Base

  validates_presence_of  :fecha, :customer_id ,  :employee_id, :km , :qty , :horometro , :comments , :user_id, :truck_id 

  
  before_save :set_full_address
  belongs_to :company 	 
  belongs_to :customer 
  belongs_to :user


end
