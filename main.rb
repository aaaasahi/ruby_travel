puts <<~TEXT
    旅行プランを選択して下さい。
    1. 沖縄旅行（10000円）
    2. 北海道旅行（20000円）
    3. 九州旅行（15000円）
TEXT

plan = [
    {place: "沖縄", price: 10000},
    {place: "北海道", price: 20000},
    {place: "九州", price: 15000}
]

while true
    print "プランの番号を選択 > "
    plan_num = gets.to_i
    break if (1..3).include?(plan_num)
    puts "1〜3の中から選んでください。"
end

select_plan = plan[plan_num - 1]
puts "#{select_plan[:place]}旅行ですね。}"

puts "何名で予約されますか？"
while true
    print "人数を入力 > "
    number_of_people = gets.to_i
    break if number_of_people >= 1
    puts "1以上を入力してください。"
end

puts "#{number_of_people}名ですね。"

discount_price = select_plan[:price] * 0.9
discount_total_price = discount_price * number_of_people
total_price = select_plan[:price] * number_of_people

if number_of_people >= 5
puts "5名以上ですので10%割引となります"
puts "合計金額は#{discount_total_price.floor}円になります。"
else
puts "合計金額は#{total_price}円になります。"
end








