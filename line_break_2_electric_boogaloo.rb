def regexiflow(text, maxwidth = 40)
  text.split(/(.{1,#{maxwidth}})(?:\s|\z)/).reject {|block| block == ""}
end
