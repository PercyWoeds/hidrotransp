
    $: << Dir.pwd + '/lib'

    require 'pry'
    require '/home/percy/sunat-ruby9/lib/peru_sunat_ruc'
    

	ruc_number = "20559912353"

    result  = PeruSunatRuc.name_from ruc_number
    result2 = PeruSunatRuc.address_from ruc_number

    puts result
    puts result2


