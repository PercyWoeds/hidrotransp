{"filter":false,"title":"document.rb","tooltip":"/lib/sunat/document.rb","undoManager":{"mark":33,"position":33,"stack":[[{"start":{"row":98,"column":6},"end":{"row":103,"column":9},"action":"remove","lines":["pdf.bounding_box([0, 140], :width => 535, :height => 140) do","      pdf.stroke_bounds","      pdf.text  $lcCuentas ,:align => :center,:valign => :center, :style => :bold    ","      end","","      pdf"],"id":2}],[{"start":{"row":98,"column":6},"end":{"row":107,"column":9},"action":"insert","lines":["   pdf.stroke_horizontal_rule","     ","     image_path = open(\"https://chart.googleapis.com/chart?chs=90x90&cht=qr&chl=#{$lcCodigoBarra}&choe=UTF-8\")","    ","     pdf.table([[ {:image => image_path,:position => :center}  , \"","     ","     Para consultar el comprobante ingresar a www.nobal.com.pe/facturas","      Representación impresa del comprobante electrónico.OPERACION SUJETA AL SISTEMA DE PAGO DE OBLIGACIONES TRIBUTARIAS CON EL GOBIERNO CENTRAL BCO. DE LA NACION NRO.00-093-003985\"]],:cell_style => { :border_width => 0 } )","","      pdf"],"id":3}],[{"start":{"row":105,"column":57},"end":{"row":105,"column":180},"action":"remove","lines":["OPERACION SUJETA AL SISTEMA DE PAGO DE OBLIGACIONES TRIBUTARIAS CON EL GOBIERNO CENTRAL BCO. DE LA NACION NRO.00-093-003985"],"id":4}],[{"start":{"row":104,"column":70},"end":{"row":104,"column":71},"action":"remove","lines":["s"],"id":5}],[{"start":{"row":104,"column":69},"end":{"row":104,"column":70},"action":"remove","lines":["a"],"id":6}],[{"start":{"row":104,"column":68},"end":{"row":104,"column":69},"action":"remove","lines":["r"],"id":7}],[{"start":{"row":104,"column":67},"end":{"row":104,"column":68},"action":"remove","lines":["u"],"id":8}],[{"start":{"row":104,"column":66},"end":{"row":104,"column":67},"action":"remove","lines":["t"],"id":9}],[{"start":{"row":104,"column":65},"end":{"row":104,"column":66},"action":"remove","lines":["c"],"id":10}],[{"start":{"row":104,"column":64},"end":{"row":104,"column":65},"action":"remove","lines":["a"],"id":11}],[{"start":{"row":104,"column":63},"end":{"row":104,"column":64},"action":"remove","lines":["f"],"id":12}],[{"start":{"row":104,"column":62},"end":{"row":104,"column":63},"action":"remove","lines":["/"],"id":13}],[{"start":{"row":104,"column":61},"end":{"row":104,"column":62},"action":"remove","lines":["e"],"id":14}],[{"start":{"row":104,"column":60},"end":{"row":104,"column":61},"action":"remove","lines":["p"],"id":15}],[{"start":{"row":104,"column":59},"end":{"row":104,"column":60},"action":"remove","lines":["."],"id":16}],[{"start":{"row":104,"column":58},"end":{"row":104,"column":59},"action":"remove","lines":["m"],"id":17}],[{"start":{"row":104,"column":57},"end":{"row":104,"column":58},"action":"remove","lines":["o"],"id":18}],[{"start":{"row":104,"column":56},"end":{"row":104,"column":57},"action":"remove","lines":["c"],"id":19}],[{"start":{"row":104,"column":55},"end":{"row":104,"column":56},"action":"remove","lines":["."],"id":20}],[{"start":{"row":104,"column":54},"end":{"row":104,"column":55},"action":"remove","lines":["l"],"id":21}],[{"start":{"row":104,"column":53},"end":{"row":104,"column":54},"action":"remove","lines":["a"],"id":22}],[{"start":{"row":104,"column":52},"end":{"row":104,"column":53},"action":"remove","lines":["b"],"id":23}],[{"start":{"row":104,"column":51},"end":{"row":104,"column":52},"action":"remove","lines":["o"],"id":24}],[{"start":{"row":104,"column":50},"end":{"row":104,"column":51},"action":"remove","lines":["n"],"id":25}],[{"start":{"row":104,"column":49},"end":{"row":104,"column":50},"action":"remove","lines":["."],"id":26}],[{"start":{"row":104,"column":48},"end":{"row":104,"column":49},"action":"remove","lines":["w"],"id":27}],[{"start":{"row":104,"column":47},"end":{"row":104,"column":48},"action":"remove","lines":["w"],"id":28}],[{"start":{"row":104,"column":46},"end":{"row":104,"column":47},"action":"remove","lines":["w"],"id":29}],[{"start":{"row":104,"column":45},"end":{"row":104,"column":46},"action":"remove","lines":[" "],"id":30}],[{"start":{"row":104,"column":45},"end":{"row":104,"column":46},"action":"insert","lines":[" "],"id":31}],[{"start":{"row":104,"column":46},"end":{"row":104,"column":133},"action":"insert","lines":["https://www.sunat.gob.pe/ol-ti-itconsultaunificadalibre/consultaUnificadaLibre/consulta"],"id":32}],[{"start":{"row":102,"column":66},"end":{"row":105,"column":56},"action":"remove","lines":["","     ","     Para consultar el comprobante ingresar a https://www.sunat.gob.pe/ol-ti-itconsultaunificadalibre/consultaUnificadaLibre/consulta","      Representación impresa del comprobante electrónico"],"id":33},{"start":{"row":102,"column":66},"end":{"row":104,"column":104},"action":"insert","lines":[" El pago del documento sera necesariamente efectuado mediante deposito en cualquiera de las siguientes cuentas bancarias:  ","  BBVA Continental Cuenta Corriente en Moneda Nacional Numero: BBVA SOLES 0011-0168-27010004490.","  Consultar  en  https://www.sunat.gob.pe/ol-ti-itconsultaunificadalibre/consultaUnificadaLibre/consulta"]}],[{"start":{"row":104,"column":104},"end":{"row":104,"column":105},"action":"insert","lines":[" "],"id":34}],[{"start":{"row":104,"column":104},"end":{"row":104,"column":105},"action":"remove","lines":[" "],"id":35}]]},"ace":{"folds":[],"scrolltop":1620,"scrollleft":0,"selection":{"start":{"row":98,"column":35},"end":{"row":98,"column":35},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":114,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1558368853088,"hash":"cb436e1852378c1324c28f3ba760a416b090e214"}