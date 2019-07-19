{"filter":false,"title":"redention_details_controller.rb","tooltip":"/app/controllers/redention_details_controller.rb","ace":{"folds":[],"scrolltop":331.0625,"scrollleft":0,"selection":{"start":{"row":62,"column":83},"end":{"row":62,"column":83},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"44f4ae8d428295d8ad7c4e548c8100c023dc23b4","undoManager":{"mark":73,"position":73,"stack":[[{"start":{"row":1,"column":0},"end":{"row":24,"column":1},"action":"remove","lines":["  belongs_to :redention ","\tbelongs_to :product ","","\tvalidates :product_id, presence: true","\tvalidates :quantity, presence: true","\tvalidates :price, presence: true","","\taccepts_nested_attributes_for :product ","","","\tdef subtotal","\t\tself.quantity ? quantity * unit_price : 0","\tend","","\tdef unit_price","\t\tif persisted?","\t\t\tprice","\t\telse","\t\t\titem ? item.price : 0","\t\tend","\tend","\t","\tend ","\t"],"id":245}],[{"start":{"row":1,"column":0},"end":{"row":63,"column":3},"action":"insert","lines":["before_action :set_sale, only: [:new, :create, :destroy]\t","","\tdef new","\t\t@sale_details = @sale.sale_details.build","\t\t@sale_details.item = Item.first","\tend","","\tdef create","\t\titem_exists = false","\t\titem_id = params[:sale_details][:item_id].to_i","\t\t@sale.sale_details.each do |detail|","\t\t\tif detail.item_id == item_id","\t\t\t\t# Ya existe el item en la factura, agregar cantidad","\t\t\t\titem_exists = true","\t\t\t\t@sale_detail = detail","\t\t\t\t@saved_sale_detail = detail.id","\t\t\t\tbreak","\t\t\tend","\t\tend","\t\tif item_exists","\t\t\t@sale_detail.qty += params[:sale_details][:qty].to_i","\t\t\t@sale_detail.price = params[:sale_details][:price].to_f","\t\t\t@sale_detail.save!","\t\telse","\t\t\tsale_detail = SaleDetail.new(sale_details_params)","\t\t\tif @sale.sale_details.last.nil?","\t\t\t\tsale_detail.number = 1","\t\t\telse","\t\t\t\tsale_detail.number = @sale.sale_details.last.number + 1","\t\t\tend","\t\t\t@sale.sale_details << sale_detail","\t\tend","\t\t@sale.save!","\tend","","\tdef edit","\t\t@sale_detail = SaleDetail.find(params[:id])","\tend","","\tdef update","\tend","","\tdef destroy","\t\t@sale_detail = SaleDetail.find(params[:id])","\t\t@sale_detail.destroy","","\t\trespond_to do |format|","\t\t\tformat.js { render layout: false }","\t\tend","\tend","","","  private","    # Use callbacks to share common setup or constraints between actions.","    def set_sale","      @sale = Sale.find(params[:sale_id].to_i)","    end","","    # Never trust parameters from the scary internet, only allow the white list through.","    def sale_details_params","      params.require(:sale_details).permit(:id, :sale_id, :item_id, :item_description, :number, :qty, :price, :_destroy)","    end","end"],"id":246}],[{"start":{"row":63,"column":3},"end":{"row":64,"column":0},"action":"insert","lines":["",""],"id":247}],[{"start":{"row":64,"column":0},"end":{"row":65,"column":0},"action":"insert","lines":["",""],"id":248}],[{"start":{"row":65,"column":0},"end":{"row":66,"column":0},"action":"insert","lines":["",""],"id":249}],[{"start":{"row":66,"column":0},"end":{"row":67,"column":0},"action":"insert","lines":["",""],"id":250}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":[" "],"id":251}],[{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":[" "],"id":252}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":[" "],"id":253}],[{"start":{"row":1,"column":3},"end":{"row":1,"column":4},"action":"insert","lines":[" "],"id":254}],[{"start":{"row":0,"column":68},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":255},{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":["\t"]}],[{"start":{"row":56,"column":15},"end":{"row":56,"column":16},"action":"remove","lines":["e"],"id":256}],[{"start":{"row":56,"column":14},"end":{"row":56,"column":15},"action":"remove","lines":["l"],"id":257}],[{"start":{"row":56,"column":13},"end":{"row":56,"column":14},"action":"remove","lines":["a"],"id":258}],[{"start":{"row":56,"column":12},"end":{"row":56,"column":13},"action":"remove","lines":["s"],"id":259}],[{"start":{"row":56,"column":12},"end":{"row":56,"column":13},"action":"insert","lines":["r"],"id":260}],[{"start":{"row":56,"column":13},"end":{"row":56,"column":14},"action":"insert","lines":["e"],"id":261}],[{"start":{"row":56,"column":14},"end":{"row":56,"column":15},"action":"insert","lines":["d"],"id":262}],[{"start":{"row":56,"column":15},"end":{"row":56,"column":16},"action":"insert","lines":["e"],"id":263}],[{"start":{"row":56,"column":8},"end":{"row":56,"column":16},"action":"remove","lines":["set_rede"],"id":264},{"start":{"row":56,"column":8},"end":{"row":56,"column":21},"action":"insert","lines":["set_redention"]}],[{"start":{"row":5,"column":19},"end":{"row":5,"column":23},"action":"remove","lines":["sale"],"id":265},{"start":{"row":5,"column":19},"end":{"row":5,"column":28},"action":"insert","lines":["redention"]},{"start":{"row":12,"column":3},"end":{"row":12,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":12,"column":3},"end":{"row":12,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":27,"column":7},"end":{"row":27,"column":11},"action":"remove","lines":["sale"]},{"start":{"row":27,"column":7},"end":{"row":27,"column":16},"action":"insert","lines":["redention"]},{"start":{"row":30,"column":26},"end":{"row":30,"column":30},"action":"remove","lines":["sale"]},{"start":{"row":30,"column":26},"end":{"row":30,"column":35},"action":"insert","lines":["redention"]},{"start":{"row":32,"column":4},"end":{"row":32,"column":8},"action":"remove","lines":["sale"]},{"start":{"row":32,"column":4},"end":{"row":32,"column":13},"action":"insert","lines":["redention"]},{"start":{"row":34,"column":3},"end":{"row":34,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":34,"column":3},"end":{"row":34,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":57,"column":7},"end":{"row":57,"column":11},"action":"remove","lines":["sale"]},{"start":{"row":57,"column":7},"end":{"row":57,"column":16},"action":"insert","lines":["redention"]},{"start":{"row":57,"column":19},"end":{"row":57,"column":23},"action":"remove","lines":["Sale"]},{"start":{"row":57,"column":19},"end":{"row":57,"column":28},"action":"insert","lines":["redention"]}],[{"start":{"row":2,"column":23},"end":{"row":2,"column":27},"action":"remove","lines":["sale"],"id":266},{"start":{"row":2,"column":23},"end":{"row":2,"column":32},"action":"insert","lines":["redention"]},{"start":{"row":5,"column":3},"end":{"row":5,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":5,"column":3},"end":{"row":5,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":5,"column":34},"end":{"row":5,"column":38},"action":"remove","lines":["sale"]},{"start":{"row":5,"column":34},"end":{"row":5,"column":43},"action":"insert","lines":["redention"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":11,"column":20},"end":{"row":11,"column":24},"action":"remove","lines":["sale"]},{"start":{"row":11,"column":20},"end":{"row":11,"column":29},"action":"insert","lines":["redention"]},{"start":{"row":12,"column":13},"end":{"row":12,"column":17},"action":"remove","lines":["sale"]},{"start":{"row":12,"column":13},"end":{"row":12,"column":22},"action":"insert","lines":["redention"]},{"start":{"row":16,"column":5},"end":{"row":16,"column":9},"action":"remove","lines":["sale"]},{"start":{"row":16,"column":5},"end":{"row":16,"column":14},"action":"insert","lines":["redention"]},{"start":{"row":17,"column":11},"end":{"row":17,"column":15},"action":"remove","lines":["sale"]},{"start":{"row":17,"column":11},"end":{"row":17,"column":20},"action":"insert","lines":["redention"]},{"start":{"row":22,"column":4},"end":{"row":22,"column":8},"action":"remove","lines":["sale"]},{"start":{"row":22,"column":4},"end":{"row":22,"column":13},"action":"insert","lines":["redention"]},{"start":{"row":22,"column":36},"end":{"row":22,"column":40},"action":"remove","lines":["sale"]},{"start":{"row":22,"column":36},"end":{"row":22,"column":45},"action":"insert","lines":["redention"]},{"start":{"row":23,"column":4},"end":{"row":23,"column":8},"action":"remove","lines":["sale"]},{"start":{"row":23,"column":4},"end":{"row":23,"column":13},"action":"insert","lines":["redention"]},{"start":{"row":23,"column":37},"end":{"row":23,"column":41},"action":"remove","lines":["sale"]},{"start":{"row":23,"column":37},"end":{"row":23,"column":46},"action":"insert","lines":["redention"]},{"start":{"row":24,"column":4},"end":{"row":24,"column":8},"action":"remove","lines":["sale"]},{"start":{"row":24,"column":4},"end":{"row":24,"column":13},"action":"insert","lines":["redention"]},{"start":{"row":26,"column":3},"end":{"row":26,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":26,"column":3},"end":{"row":26,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":26,"column":22},"end":{"row":26,"column":26},"action":"remove","lines":["Sale"]},{"start":{"row":26,"column":22},"end":{"row":26,"column":31},"action":"insert","lines":["redention"]},{"start":{"row":26,"column":42},"end":{"row":26,"column":46},"action":"remove","lines":["sale"]},{"start":{"row":26,"column":42},"end":{"row":26,"column":51},"action":"insert","lines":["redention"]},{"start":{"row":27,"column":17},"end":{"row":27,"column":21},"action":"remove","lines":["sale"]},{"start":{"row":27,"column":17},"end":{"row":27,"column":26},"action":"insert","lines":["redention"]},{"start":{"row":28,"column":4},"end":{"row":28,"column":8},"action":"remove","lines":["sale"]},{"start":{"row":28,"column":4},"end":{"row":28,"column":13},"action":"insert","lines":["redention"]},{"start":{"row":30,"column":4},"end":{"row":30,"column":8},"action":"remove","lines":["sale"]},{"start":{"row":30,"column":4},"end":{"row":30,"column":13},"action":"insert","lines":["redention"]},{"start":{"row":30,"column":41},"end":{"row":30,"column":45},"action":"remove","lines":["sale"]},{"start":{"row":30,"column":41},"end":{"row":30,"column":50},"action":"insert","lines":["redention"]},{"start":{"row":32,"column":14},"end":{"row":32,"column":18},"action":"remove","lines":["sale"]},{"start":{"row":32,"column":14},"end":{"row":32,"column":23},"action":"insert","lines":["redention"]},{"start":{"row":32,"column":35},"end":{"row":32,"column":39},"action":"remove","lines":["sale"]},{"start":{"row":32,"column":35},"end":{"row":32,"column":44},"action":"insert","lines":["redention"]},{"start":{"row":38,"column":3},"end":{"row":38,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":38,"column":3},"end":{"row":38,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":38,"column":22},"end":{"row":38,"column":26},"action":"remove","lines":["Sale"]},{"start":{"row":38,"column":22},"end":{"row":38,"column":31},"action":"insert","lines":["redention"]},{"start":{"row":45,"column":3},"end":{"row":45,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":45,"column":3},"end":{"row":45,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":45,"column":22},"end":{"row":45,"column":26},"action":"remove","lines":["Sale"]},{"start":{"row":45,"column":22},"end":{"row":45,"column":31},"action":"insert","lines":["redention"]},{"start":{"row":46,"column":3},"end":{"row":46,"column":7},"action":"remove","lines":["sale"]},{"start":{"row":46,"column":3},"end":{"row":46,"column":12},"action":"insert","lines":["redention"]},{"start":{"row":57,"column":42},"end":{"row":57,"column":46},"action":"remove","lines":["sale"]},{"start":{"row":57,"column":42},"end":{"row":57,"column":51},"action":"insert","lines":["redention"]},{"start":{"row":61,"column":8},"end":{"row":61,"column":12},"action":"remove","lines":["sale"]},{"start":{"row":61,"column":8},"end":{"row":61,"column":17},"action":"insert","lines":["redention"]},{"start":{"row":62,"column":22},"end":{"row":62,"column":26},"action":"remove","lines":["sale"]},{"start":{"row":62,"column":22},"end":{"row":62,"column":31},"action":"insert","lines":["redention"]},{"start":{"row":62,"column":54},"end":{"row":62,"column":58},"action":"remove","lines":["sale"]},{"start":{"row":62,"column":54},"end":{"row":62,"column":63},"action":"insert","lines":["redention"]}],[{"start":{"row":0,"column":16},"end":{"row":0,"column":17},"action":"remove","lines":[":"],"id":267}],[{"start":{"row":0,"column":16},"end":{"row":0,"column":17},"action":"remove","lines":[":"],"id":268}],[{"start":{"row":0,"column":15},"end":{"row":0,"column":16},"action":"remove","lines":["s"],"id":269}],[{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"remove","lines":["n"],"id":270}],[{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"remove","lines":["o"],"id":271}],[{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"remove","lines":["i"],"id":272}],[{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"remove","lines":["t"],"id":273}],[{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"remove","lines":["n"],"id":274}],[{"start":{"row":0,"column":9},"end":{"row":0,"column":10},"action":"remove","lines":["e"],"id":275}],[{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"remove","lines":["d"],"id":276}],[{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"remove","lines":["e"],"id":277}],[{"start":{"row":0,"column":6},"end":{"row":0,"column":7},"action":"remove","lines":["R"],"id":278}],[{"start":{"row":57,"column":19},"end":{"row":57,"column":20},"action":"remove","lines":["r"],"id":279}],[{"start":{"row":57,"column":19},"end":{"row":57,"column":20},"action":"insert","lines":["R"],"id":280}],[{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"remove","lines":["m"],"id":281}],[{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"remove","lines":["e"],"id":282}],[{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"remove","lines":["t"],"id":283}],[{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"remove","lines":["i"],"id":284}],[{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["p"],"id":285}],[{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["r"],"id":286}],[{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["o"],"id":287}],[{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"insert","lines":["d"],"id":288}],[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":["u"],"id":289}],[{"start":{"row":6,"column":26},"end":{"row":6,"column":27},"action":"insert","lines":["c"],"id":290}],[{"start":{"row":6,"column":27},"end":{"row":6,"column":28},"action":"insert","lines":["t"],"id":291}],[{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":["o"],"id":292}],[{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"remove","lines":["o"],"id":293}],[{"start":{"row":11,"column":43},"end":{"row":11,"column":44},"action":"remove","lines":["m"],"id":294}],[{"start":{"row":11,"column":42},"end":{"row":11,"column":43},"action":"remove","lines":["e"],"id":295}],[{"start":{"row":11,"column":41},"end":{"row":11,"column":42},"action":"remove","lines":["t"],"id":296}],[{"start":{"row":11,"column":40},"end":{"row":11,"column":41},"action":"remove","lines":["i"],"id":297}],[{"start":{"row":11,"column":40},"end":{"row":11,"column":41},"action":"insert","lines":["p"],"id":298}],[{"start":{"row":11,"column":41},"end":{"row":11,"column":42},"action":"insert","lines":["r"],"id":299}],[{"start":{"row":11,"column":42},"end":{"row":11,"column":43},"action":"insert","lines":["o"],"id":300}],[{"start":{"row":11,"column":43},"end":{"row":11,"column":44},"action":"insert","lines":["d"],"id":301}],[{"start":{"row":11,"column":44},"end":{"row":11,"column":45},"action":"insert","lines":["u"],"id":302}],[{"start":{"row":11,"column":45},"end":{"row":11,"column":46},"action":"insert","lines":["c"],"id":303}],[{"start":{"row":11,"column":46},"end":{"row":11,"column":47},"action":"insert","lines":["t"],"id":304}],[{"start":{"row":22,"column":57},"end":{"row":22,"column":58},"action":"insert","lines":["u"],"id":305}],[{"start":{"row":22,"column":58},"end":{"row":22,"column":59},"action":"insert","lines":["a"],"id":306}],[{"start":{"row":22,"column":59},"end":{"row":22,"column":60},"action":"insert","lines":["n"],"id":307}],[{"start":{"row":22,"column":60},"end":{"row":22,"column":61},"action":"insert","lines":["t"],"id":308}],[{"start":{"row":22,"column":61},"end":{"row":22,"column":62},"action":"insert","lines":["i"],"id":309}],[{"start":{"row":22,"column":56},"end":{"row":22,"column":64},"action":"remove","lines":["quantity"],"id":310},{"start":{"row":22,"column":56},"end":{"row":22,"column":64},"action":"insert","lines":["quantity"]}],[{"start":{"row":22,"column":22},"end":{"row":22,"column":23},"action":"insert","lines":["u"],"id":311}],[{"start":{"row":22,"column":23},"end":{"row":22,"column":24},"action":"insert","lines":["a"],"id":312}],[{"start":{"row":22,"column":24},"end":{"row":22,"column":25},"action":"insert","lines":["n"],"id":313}],[{"start":{"row":22,"column":21},"end":{"row":22,"column":27},"action":"remove","lines":["quanty"],"id":314},{"start":{"row":22,"column":21},"end":{"row":22,"column":29},"action":"insert","lines":["quantity"]}],[{"start":{"row":62,"column":108},"end":{"row":62,"column":109},"action":"insert","lines":["u"],"id":315}],[{"start":{"row":62,"column":109},"end":{"row":62,"column":110},"action":"insert","lines":["a"],"id":316}],[{"start":{"row":62,"column":110},"end":{"row":62,"column":111},"action":"insert","lines":["n"],"id":317}],[{"start":{"row":62,"column":107},"end":{"row":62,"column":113},"action":"remove","lines":["quanty"],"id":318},{"start":{"row":62,"column":107},"end":{"row":62,"column":115},"action":"insert","lines":["quantity"]}]]},"timestamp":1530913664623}