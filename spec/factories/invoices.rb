FactoryGirl.define do
  factory :invoice do
    num 1
date "2016-01-05"
client "MyString"
client_inn 1
client_kpp 1
client_adress "MyText"
item_name "MyString"
unit 1
price 1
price_total 1
  end

end
