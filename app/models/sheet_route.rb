class SheetRoute < ActiveRecord::Base

	 has_many :sheet_route_details, :dependent => :destroy
 belongs_to :user  

 def get_maximo(serie)

    @serie = serie 
    a = SheetRoute.where("SUBSTRING(code,1,1) = ? ", @serie).maximum("cast(substring(code,3,8) as int)")
       if a.nil?
        return  @serie + "-000001"
      else
        return  @serie  + "-"+ (a + 1).to_s.rjust(6, '0') 

      end 
 end 



end
