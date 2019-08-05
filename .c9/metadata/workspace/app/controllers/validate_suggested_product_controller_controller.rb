{"filter":false,"title":"validate_suggested_product_controller_controller.rb","tooltip":"/app/controllers/validate_suggested_product_controller_controller.rb","undoManager":{"mark":58,"position":58,"stack":[[{"start":{"row":0,"column":74},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":1,"column":4},"end":{"row":14,"column":5},"action":"insert","lines":[" def index","  \t\titem = []","\t\tif params[:item_description].present?","\t\t\titem_description = params[:item_description]","\t\t\tcondition = \"unaccent(lower(description || ' ' || name)) = '#{I18n.transliterate(item_description.downcase)}'\"","\t\t\titem = Item.joins(:brand).where(condition)","\t\tend","\t\tif !item.empty?","\t\t\tresult = [valid: true, id: item.first.id, price: item.first.price]","\t\telse","\t\t\tresult = [valid: false, id: 0]","\t\tend","\t\trender json: result","  end"],"id":3}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["d"],"id":4}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["e"],"id":5}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["s"],"id":6}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["c"],"id":7}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["r"],"id":8}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["i"],"id":9}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["p"],"id":10}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["t"],"id":11}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["i"],"id":12}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["o"],"id":13}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["n"],"id":14}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":[" "],"id":15}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["|"],"id":16}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["|"],"id":17}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":[" "],"id":18}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["'"],"id":19}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":[" "],"id":20}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["'"],"id":21}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":[" "],"id":22}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["|"],"id":23}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["|"],"id":24}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":[" "],"id":25}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["j"],"id":26}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["o"],"id":27}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["i"],"id":28}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["n"],"id":29}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["s"],"id":30}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["("],"id":31}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":[":"],"id":32}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["b"],"id":33}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["r"],"id":34}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["a"],"id":35}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["n"],"id":36}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["d"],"id":37}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":[")"],"id":38}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["."],"id":39}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"remove","lines":["m"],"id":40}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"remove","lines":["e"],"id":41}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"remove","lines":["t"],"id":42}],[{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"remove","lines":["I"],"id":43}],[{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"insert","lines":["P"],"id":44}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":["o"],"id":45}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":["r"],"id":46}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"insert","lines":["u"],"id":47}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"remove","lines":["u"],"id":48}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"remove","lines":["r"],"id":49}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"remove","lines":["o"],"id":50}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":["r"],"id":51}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":["o"],"id":52}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"insert","lines":["u"],"id":53}],[{"start":{"row":6,"column":14},"end":{"row":6,"column":15},"action":"insert","lines":["c"],"id":54}],[{"start":{"row":6,"column":14},"end":{"row":6,"column":15},"action":"remove","lines":["c"],"id":55}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"remove","lines":["u"],"id":56}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"insert","lines":["d"],"id":57}],[{"start":{"row":6,"column":14},"end":{"row":6,"column":15},"action":"insert","lines":["u"],"id":58}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"insert","lines":["c"],"id":59}],[{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["t"],"id":60}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":13,"column":21},"end":{"row":13,"column":21},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1530907794546,"hash":"3af16c3ff6bdeab681065e643beb5e5b116baf5d"}