class Client < ActiveRecord::Base

	has_many :invoices, :class_name=> 'Invoice',	:foreign_key => 'vcodigo' 
  has_many :notacredits 
	
    self.per_page = 20

    
	attr_accessible :vcodigo, :vdep, :vdireccion, :vdistrito, :vprov, :vrazon2, :vruc, :mailclient, :mailclient2, :mailclient3

      def self.import(file)
          CSV.foreach(file.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|
          Client.create! row.to_hash 
        end
      end       

  def self.search(search)
      where("vruc  LIKE ?", "%#{search}%") 
        
  end

   def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |client|
          csv << client.attributes.values_at(*column_names)
        end
      end
    end


end
