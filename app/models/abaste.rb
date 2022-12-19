class Abaste < ActiveRecord::Base

  validates_presence_of  :fecha, :customer_id ,  :employee_id, :km , :qty , :horometro , :comments , :user_id, :truck_id 

  

  belongs_to :company 	 
  belongs_to :customer 
  belongs_to :user
  belongs_to :truck 
  belongs_to :employee

end
