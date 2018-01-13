# 文字列定義は'もしくは"で囲う
p 'string' # シングルクォート
p "string" # ダブルクォート
a = '変数'
p "string#{a}" # ダブルクォート内は変数展開可

# 文字列連結は+を使用
p 'あいうえお' + 'abc'

# * 演算子で複製可能
p '=' * 10 # デバックとかでよく使う

# 比較
p 'a' == 'a'     # true
p 'a'.eql?('a')  # true

# オブジェクトの比較(オブジェクトIDで比較)
str = 'str'
str1 = str
p str.equal?(str1)  # true
p str.equal?('str') # false 

# 変更
str = 'abcdef'
str[0] = 'A'
p str   # 'Abcdef'

# 削除
p 'abcdefabcdef'.delete('a')

# 置換
# sub()
str = 'abcabc'
p str.sub('ab', 'AB')

# gsub()
p 'abcabc'.gsub('ab', 'AB')

# tr()
p 'abcabc'.tr('a-c', 'A-C') # 'ABCABC'

# tr_s()
# 置換 + 重複を一文字に圧縮
p 'aaabbbcabbbcc'.tr_s('a-c', 'A-C') # 'ABCABC'

# squeeze
p 'aaaaaaabbvvvvacccc'.squeeze

# replace
p 'aaaa'.replace('bbb')

# 追加
p 'aaa' + 'b'

p 'aaa' << 'b'

p 'aaa'.concat('b')

# 大文字、小文字への変換
p 'class'.capitalize  # Class 先頭を大文字にする

p 'CLASS'.downcase

p 'class'.upcase

p 'cLaSs'.swapcase

# 後ろの改行の削除
p "abcd\n".chomp

# 前後のスペースを削除
p ' ab cd '.strip

p ' ab cd '.lstrip # 左のスペースを削除

p ' ab cd '.rstrip

# 文末の文字を削る
p 'abcd'.chop

# 文字の逆転
p 'abcd'.reverse

# 文字列の長さ
p 'abc'.length

p 'abc'.size

# 文字のカウント
p 'abcabc'.count('a')

# 文字列のasciiを調べる
p 'abc'.ascii_only?
p 'あ'.ascii_only?
p '$'.ascii_only?

# 空文字判定
p ''.empty?
p 'abc'.empty?

# 文字列の割り当て
p 'a'.center(20)
p 'a'.center(20, '*')
