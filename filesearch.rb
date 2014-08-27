#!/usr/local/bin/ruby


require "find"

# ふぁいるりすと保存用配列
list = Array.new()

# directoryは無視して配列に入れる
Find.find("/home/akazawa/work/deepninja/data/tk"){ |f|
  next unless FileTest.file?(f)
  list.push f
}

#puts list[20]

# ふぁいるを読んで１行目だけ見る
for check in list do
  fname = File.basename("#{check}")
  fdir = File.dirname("#{check}")
  #puts fdir

  filein = File.open("#{check}","r")
  fline = Array.new()
  filein.each_line{|l|
    fline.push l
  }
  filein.close

  # 配列の０番目だけを改行区切で確認する
  #puts fline[0]
  str = "#{fline[0]}"
  if (str.split(/\s+/)[5] == "-99.999") &&
      (str.split(/\s+/)[6] == "-999.999") &&
      (str.split(/\s+/)[8] == "0")
    p fname
  end

end
