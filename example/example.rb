$LOAD_PATH.unshift "../lib"

require "kramdown"

md_src = File.read(ARGV[0])
doc = Kramdown::Document.new(
  md_src,
  :input => "GFM", :hard_wrap => true
)
print doc.to_html
