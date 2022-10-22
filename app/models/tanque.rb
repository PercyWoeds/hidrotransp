class Tanque < ActiveRecord::Base
    validates_uniqueness_of :code
    validates_presence_of :code,:product_id,:saldo_inicial,:varilla 
    
    belongs_to :product 
    belongs_to :truck 
    
    has_many :afericions  


    def name_with_country
      "#{product.name}, #{truck.placa}"
    end
        
end
