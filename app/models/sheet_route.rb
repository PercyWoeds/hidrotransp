class SheetRoute < ActiveRecord::Base

	 has_many :sheet_route_details, :dependent => :destroy
 belongs_to :user  

 belongs_to :truck 


 TABLE_HEADERS = ["Nro.Item",
                      "Fecha ",
                     "Empleado",
                     "KM.Entrada",
                     "KM.Salida",
                     "Total",
                     "Destino",
                     "Comb.Km.",
                     "Comb.Glns.",
                     "Mant.Km.",
                     "Observa"]

 def get_maximo(serie)

    @serie = serie 
    a = SheetRoute.where("SUBSTRING(code,1,1) = ? ", @serie).maximum("cast(substring(code,3,8) as int)")
       if a.nil?
        return  @serie + "-000001"
      else
        return  @serie  + "-"+ (a + 1).to_s.rjust(6, '0') 

      end 
 end 


def get_sheet_route_detalle


      @SheetRoute = SheetRouteDetail.where("sheet_route_id = ? ",self.id)
  

end 



  # Process the invoice
  def process

    if(self.processed == "1" or self.processed == true)   


        self.processed="1"

        self.date_processed = Time.now
        self.save

    end

  end

   def get_processed_short
    if(self.processed == "1")
      return "Si"
    elsif (self.processed == "3")
       return "Si"
    else
      return "No"
    end
  end
  
   def processed_color
    if(self.processed == "1")
      return "green"
    else
      return "red"
    end
  end


end
