
    $: << Dir.pwd + '/lib'

    require 'pry'
    require 'peru_sunat_ruc'
    

	ruc_number = "20424092941"

    result  = PeruSunatRuc.name_from ruc_number
    result2 = PeruSunatRuc.address_from ruc_number

    puts result
    puts result2


