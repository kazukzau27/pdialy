require 'pdf-reader'
require 'roo'

# PDFからテキストを抽出
reader = PDF::Reader.new('商品.pdf')
text_content = reader.pages.map(&:text).join("\n")

# エクセルにテキストを貼り付ける
excel = Roo::Excelx.new('商品.xlsx')
excel.default_sheet = excel.sheets.first

# セルにテキストを貼り付ける
excel.set(1, 1, text_content)

# または、より複雑なデータを貼り付ける場合は、each_with_index などを利用

# 最後にエクセルファイルを保存
excel.save