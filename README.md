deepninja-dataconvert
=====================

Data Convertor for deepNINJA products.

==
DeepNINJAの公開データをコンバートするファイルを確認するツール

変換作業自体は手作業（２０ファイル前後と数が少なく、目視確認にもなるため）

==
使い方
==
floatclにて、list.shを実行して公開用データファイルの全リストを作成する。

$list.sh |list.txt等とする。

$ruby filesearch.rb list.txtを実行すると変換対象のファイルを標準出力に表示するだけ
なので、パイプしてテキストファイルに吐き出すのもあり。

変換対象ファイルの対応をみて中島デコードファイルから該当部分をコピーして変換終了となる

Deep NINJA公開用データファイル作成.docxを参照
