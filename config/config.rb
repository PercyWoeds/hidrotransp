
SUNAT.configure do |config|
  config.credentials do |c|


    c.ruc       = "20522012336"
    c.username  = "GEYE2018"
    c.password  = "20522012336"
   end

  config.signature do |s|
    s.party_id    = "20522012336"
    s.party_name  = "HIDROTRANSP S.A.C"
    s.cert_file   = File.join(Dir.pwd, './app/keys', 'certificategee.crt')
    s.pk_file     = File.join(Dir.pwd, './app/keys', 'CERTIFICADOGEE.key') 
  end

  config.supplier do |s|
    s.legal_name = "HIDROTRANSP S.A.C"
    s.name       = ""
    s.ruc        = "20522012336"
    s.address_id = "150132"
    s.street     = "CAM.SECTOR CRUZ DEL NORTE I ZONA BAJA MZA. C LOTE. 5 A.H. PROYECTO INTEGRAL ALIANZA INDUSTRIAL DE LAS LOMAS "
    s.district   = "CARABAYLLO - LIMA - LIMA   "
    #s.city       = "LOCAL: AV. CERRO DE PASCO NRO. 253 (A DOS CDAS DEL MUNICIPIO)
    #PASCO - PASCO - PAUCARTAMBO"
    s.city       = ""
    s.country    = "PE"
    s.logo_path  = "#{Dir.pwd}/app/assets/images/LOGOHIDRO.jpg"

                          
                          
  end
end

