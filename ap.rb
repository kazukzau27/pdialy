require "pdf-reader"
reader = PDF::Reader.new("色分け.pdf")

reader.pages.each do |page|
  puts page.text # 本文

end

