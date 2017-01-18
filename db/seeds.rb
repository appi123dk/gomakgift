# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 가격 시드데이터
Price.create(price_name: '단가', price_min: 100, price_1: 300, price_2: 500, price_3: 700, price_4: 900, price_5: 1100, price_6: 1300)

# 수량 시드데이터
Quantity.create(qty_max: 10000, qty_1: 7000, qty_2: 5000, qty_3: 3000, qty_4: 1000, qty_5: 500, qty_6: 300)

# 상품 시드데이터
Product.create(
	title: '고막머그컵',
	price_id: 1,
	quantity_id: 1,
	subtitle: '우유에 데워드세요',
	detail: '<li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li>',
	product_image: 'https://www.beanbrothers.co.kr/media/blend/2016/04/21/g05_mug_him-01.png',
	product_thumb: 'https://www.beanbrothers.co.kr/media/blend/2016/04/21/g05_mug_him-01.png',
	is_display: true
)