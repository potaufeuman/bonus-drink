class BonusDrink
  # 空き瓶3本で新しい飲み物を1本プレゼントしてくれる。
  # 購入本数(amount)を引数とし、飲める本数(can_drink)を計算するメソッド
  def self.total_count_for(amount)
    amount = amount.to_i
    bonus = amount / 3
    can_drink = amount + bonus
    # おまけ
    # puts(amount + "本購入した場合、飲める本数は、" + can_drink + "本です。")
  end

  # 購入本数[0,1,3,11,100]に対して、飲める本数を計算して出力する。
  # メソッド"self.total_count_for(amount)"を利用する。
  bottles = [0,1,3,11,100]
  puts("| 購入した本数 | 飲める本数   |")
  puts("| ----------- :| ----------- :|")
  bottles.each do |bottle|
    print("| ",bottle)
    print("            | ")
    print(self.total_count_for(bottle))
    print("            |\n")
  end

end

# 下書き
# amount =  input
# bonus = amount / 3
# can_drink = amount + bonus
# print(bottle , "本購入した場合、飲める本数は、" , self.total_count_for(bottle) , "本です。")
# puts("購入した飲み物の本数を入力してください。")
