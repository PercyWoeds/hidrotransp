{"filter":false,"title":"wicked_pdf.rb","tooltip":"/config/initializers/wicked_pdf.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":9,"column":0},"end":{"row":13,"column":3},"action":"insert","lines":["if Rails.env.production?","  WickedPdf.config = {","    exe_path: Bundler.which('wkhtmltopdf')","  }","end"],"id":368}],[{"start":{"row":13,"column":3},"end":{"row":14,"column":0},"action":"insert","lines":["",""],"id":369}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":42},"action":"remove","lines":[" Bundler.which('wkhtmltopdf')"],"id":370},{"start":{"row":11,"column":13},"end":{"row":11,"column":41},"action":"insert","lines":["'/usr/local/bin/wkhtmltopdf'"]}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"insert","lines":[" "],"id":371}],[{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"remove","lines":["r"],"id":372}],[{"start":{"row":11,"column":17},"end":{"row":11,"column":18},"action":"remove","lines":["s"],"id":373}],[{"start":{"row":11,"column":16},"end":{"row":11,"column":17},"action":"remove","lines":["u"],"id":374}],[{"start":{"row":11,"column":16},"end":{"row":11,"column":17},"action":"insert","lines":["a"],"id":375}],[{"start":{"row":11,"column":17},"end":{"row":11,"column":18},"action":"insert","lines":["p"],"id":376}],[{"start":{"row":11,"column":18},"end":{"row":11,"column":19},"action":"insert","lines":["p"],"id":377}],[{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"remove","lines":["l"],"id":378}],[{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"remove","lines":["o"],"id":379}],[{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"remove","lines":["c"],"id":380}],[{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"remove","lines":["a"],"id":381}],[{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"remove","lines":["l"],"id":382}],[{"start":{"row":11,"column":20},"end":{"row":11,"column":21},"action":"insert","lines":["v"],"id":383}],[{"start":{"row":11,"column":21},"end":{"row":11,"column":22},"action":"insert","lines":["e"],"id":384}],[{"start":{"row":11,"column":22},"end":{"row":11,"column":23},"action":"insert","lines":["n"],"id":385}],[{"start":{"row":11,"column":23},"end":{"row":11,"column":24},"action":"insert","lines":["d"],"id":386}],[{"start":{"row":11,"column":24},"end":{"row":11,"column":25},"action":"insert","lines":["o"],"id":387}],[{"start":{"row":11,"column":25},"end":{"row":11,"column":26},"action":"insert","lines":["r"],"id":388}],[{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"remove","lines":["b"],"id":389}],[{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"remove","lines":["i"],"id":390}],[{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"remove","lines":["n"],"id":391}],[{"start":{"row":11,"column":27},"end":{"row":11,"column":28},"action":"insert","lines":["b"],"id":392}],[{"start":{"row":11,"column":28},"end":{"row":11,"column":29},"action":"insert","lines":["u"],"id":393}],[{"start":{"row":11,"column":29},"end":{"row":11,"column":30},"action":"insert","lines":["n"],"id":394}],[{"start":{"row":11,"column":30},"end":{"row":11,"column":31},"action":"insert","lines":["d"],"id":395}],[{"start":{"row":11,"column":31},"end":{"row":11,"column":32},"action":"insert","lines":["l"],"id":396}],[{"start":{"row":11,"column":32},"end":{"row":11,"column":33},"action":"insert","lines":["e"],"id":397}],[{"start":{"row":11,"column":34},"end":{"row":11,"column":35},"action":"insert","lines":["b"],"id":398}],[{"start":{"row":11,"column":35},"end":{"row":11,"column":36},"action":"insert","lines":["i"],"id":399}],[{"start":{"row":11,"column":36},"end":{"row":11,"column":37},"action":"insert","lines":["n"],"id":400}],[{"start":{"row":11,"column":37},"end":{"row":11,"column":38},"action":"insert","lines":["/"],"id":401}],[{"start":{"row":11,"column":3},"end":{"row":11,"column":50},"action":"remove","lines":[" exe_path: '/app/vendor/bundle/bin/wkhtmltopdf'"],"id":402},{"start":{"row":11,"column":3},"end":{"row":11,"column":62},"action":"insert","lines":["exe_path = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s"]}],[{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"remove","lines":["a"],"id":403}],[{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"remove","lines":["m"],"id":404}],[{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"remove","lines":["d"],"id":405}],[{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"remove","lines":["6"],"id":406}],[{"start":{"row":11,"column":50},"end":{"row":11,"column":51},"action":"remove","lines":["4"],"id":407}],[{"start":{"row":11,"column":49},"end":{"row":11,"column":50},"action":"remove","lines":["-"],"id":408}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"insert","lines":[">"],"id":409}],[{"start":{"row":8,"column":0},"end":{"row":14,"column":0},"action":"remove","lines":["# https://github.com/mileszs/wicked_pdf/blob/master/README.md","if Rails.env.production?","  WickedPdf.config = {","   exe_path => Rails.root.join('bin', 'wkhtmltopdf').to_s","  }","end",""],"id":410}],[{"start":{"row":8,"column":0},"end":{"row":13,"column":3},"action":"insert","lines":["if Rails.env.staging? || Rails.env.production?","  exe_path = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s","else","  exe_path = Rails.root.join('bin', 'wkhtmltopdf').to_s","  # exe_path = '/usr/local/bin/wkhtmltopdf'","end"],"id":411}],[{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"remove","lines":["-"],"id":412}],[{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"remove","lines":["a"],"id":413}],[{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"remove","lines":["m"],"id":414}],[{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"remove","lines":["d"],"id":415}],[{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"remove","lines":["6"],"id":416}],[{"start":{"row":9,"column":48},"end":{"row":9,"column":49},"action":"remove","lines":["4"],"id":417}],[{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"remove","lines":["("],"id":418}],[{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"remove","lines":["n"],"id":419}],[{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"remove","lines":["i"],"id":420}],[{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"remove","lines":["o"],"id":421}],[{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"remove","lines":["j"],"id":422}],[{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"remove","lines":["."],"id":423}],[{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"remove","lines":["t"],"id":424}],[{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"remove","lines":["o"],"id":425}],[{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"remove","lines":["o"],"id":426}],[{"start":{"row":9,"column":19},"end":{"row":9,"column":20},"action":"remove","lines":["r"],"id":427}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"remove","lines":["."],"id":428}],[{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"remove","lines":["s"],"id":429}],[{"start":{"row":9,"column":16},"end":{"row":9,"column":17},"action":"remove","lines":["l"],"id":430}],[{"start":{"row":9,"column":15},"end":{"row":9,"column":16},"action":"remove","lines":["i"],"id":431}],[{"start":{"row":9,"column":14},"end":{"row":9,"column":15},"action":"remove","lines":["a"],"id":432}],[{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"remove","lines":["R"],"id":433}],[{"start":{"row":9,"column":38},"end":{"row":9,"column":39},"action":"remove","lines":["s"],"id":434}],[{"start":{"row":9,"column":37},"end":{"row":9,"column":38},"action":"remove","lines":["_"],"id":435}],[{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"remove","lines":["o"],"id":436}],[{"start":{"row":9,"column":35},"end":{"row":9,"column":36},"action":"remove","lines":["t"],"id":437}],[{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"remove","lines":["."],"id":438}],[{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"remove","lines":[")"],"id":439}],[{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"insert","lines":["/"],"id":440}],[{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"remove","lines":["/"],"id":441}],[{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"insert","lines":["("],"id":442}],[{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"insert","lines":[")"],"id":443}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"remove","lines":["'"],"id":444}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"remove","lines":[","],"id":445}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"remove","lines":[" "],"id":446}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"remove","lines":["'"],"id":447}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"insert","lines":["/"],"id":448}],[{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"remove","lines":["("],"id":449}],[{"start":{"row":9,"column":30},"end":{"row":9,"column":31},"action":"remove","lines":[")"],"id":450}],[{"start":{"row":13,"column":3},"end":{"row":14,"column":0},"action":"insert","lines":["",""],"id":452}],[{"start":{"row":14,"column":0},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":453}],[{"start":{"row":15,"column":0},"end":{"row":19,"column":3},"action":"insert","lines":["if Rails.env.production?","  WickedPdf.config = {","    exe_path: Bundler.which('wkhtmltopdf')","  }","end"],"id":454}],[{"start":{"row":18,"column":3},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":455},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":19,"column":0},"end":{"row":23,"column":0},"action":"insert","lines":["else","  exe_path = Rails.root.join('bin', 'wkhtmltopdf').to_s","  # exe_path = '/usr/local/bin/wkhtmltopdf'","end",""],"id":456}],[{"start":{"row":24,"column":0},"end":{"row":24,"column":1},"action":"remove","lines":["e"],"id":457}],[{"start":{"row":24,"column":0},"end":{"row":24,"column":1},"action":"remove","lines":["n"],"id":458}],[{"start":{"row":24,"column":0},"end":{"row":24,"column":1},"action":"remove","lines":["d"],"id":459}],[{"start":{"row":8,"column":0},"end":{"row":14,"column":0},"action":"remove","lines":["if Rails.env.staging? || Rails.env.production?","  exe_path = 'bin/wkhtmltopdf'","else","  exe_path = Rails.root.join('bin', 'wkhtmltopdf').to_s","  # exe_path = '/usr/local/bin/wkhtmltopdf'","end",""],"id":460}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"remove","lines":[" "],"id":461}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":41},"action":"remove","lines":["Bundler.which('wkhtmltopdf')"],"id":462}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":30},"action":"insert","lines":["/bin/wkhtmltopdf'"],"id":463}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"remove","lines":["/"],"id":464}],[{"start":{"row":11,"column":13},"end":{"row":11,"column":14},"action":"insert","lines":["'"],"id":465}],[{"start":{"row":11,"column":14},"end":{"row":11,"column":15},"action":"insert","lines":["/"],"id":466}],[{"start":{"row":11,"column":14},"end":{"row":11,"column":15},"action":"remove","lines":["/"],"id":467}],[{"start":{"row":11,"column":2},"end":{"row":11,"column":30},"action":"remove","lines":["  exe_path:'bin/wkhtmltopdf'"],"id":468},{"start":{"row":11,"column":2},"end":{"row":11,"column":55},"action":"insert","lines":["exe_path = Rails.root.join('bin', 'wkhtmltopdf').to_s"]}],[{"start":{"row":8,"column":0},"end":{"row":18,"column":0},"action":"remove","lines":["","if Rails.env.production?","  WickedPdf.config = {","  exe_path = Rails.root.join('bin', 'wkhtmltopdf').to_s","  }","else","  exe_path = Rails.root.join('bin', 'wkhtmltopdf').to_s","  # exe_path = '/usr/local/bin/wkhtmltopdf'","end","  ",""],"id":468}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":0},"end":{"row":8,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1527534878627,"hash":"deb43992d19e61853990fe2407f125cd36887720"}