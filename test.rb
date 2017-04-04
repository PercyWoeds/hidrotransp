$: << Dir.pwd + '/lib'
require 'pry'
require 'peru_sunat_ruc'

ruc_number = ARGV[0] || '20601116872'

result  = PeruSunatRuc.name_from ruc_number
result2 = PeruSunatRuc.address_from ruc_number
result3 = PeruSunatRuc.taxpayer_type_from ruc_number
result4 = PeruSunatRuc.taxpayer_condition_from ruc_number
result5 = PeruSunatRuc.taxpayer_status_from ruc_number
result6 = PeruSunatRuc.inscription_date_from ruc_number
result7 = PeruSunatRuc.voucher_system_from ruc_number
result8 = PeruSunatRuc.accounting_system_from ruc_number
result9 = PeruSunatRuc.affiliate_ple_since_from ruc_number
result10 = PeruSunatRuc.electronic_emisor_from ruc_number

puts result
puts result2
puts result3
puts result4
puts result5
puts result6
puts result7
puts result8
puts result9
puts result10
