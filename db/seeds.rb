# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 프로젝트 시드데이터
Project.create(project_name: '파이퍼하이직', brand: '파이퍼하이직', place: '드레스룸')

# 가격 시드데이터
# Price.create(price_name: '단가', price_min: 100, price_1: 300, price_2: 500, price_3: 700, price_4: 900, price_5: 1100, price_6: 1300)

# 수량 시드데이터
# Quantity.create(qty_max: 10000, qty_1: 7000, qty_2: 5000, qty_3: 3000, qty_4: 1000, qty_5: 500, qty_6: 300)

# 공급업체 시드데이터
# Supplier.create(company_name: '(주)성도테크', url: 'http://www.sdc21.co.kr/', category: '텀블러', 
# 								print_cost: 0, package_cost: 0, company_phone: '031-958-5740~2', company_fax: '031-958-5743')

# 상품 시드데이터
# Product.create(
# 	title: '워터북 텀블러',
# 	price_id: 1,
# 	quantity_id: 1,
# 	subtitle: '각진 너의 모습이 난 참 좋아',
# 	detail: '<li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li> <li>상품규격 : 24 X 36</li>',
# 	product_image: 'http://image.29cm.co.kr/contents/event/3459/20170203171014.jpg',
# 	is_display: true,
# 	supplier_id: 1,
# 	min_qty: 50,
# 	brand_name: '워터북',
# 	print_package_cost: 200,
# 	mainpage_title: '사각사각',
# 	mainpage_story: '텀블러는 왜 항상 둥글게 생겨야 하나요? 라는 질문에서 시작했습니다. 가방에 넣기도 불편하고, 들고다니기도 불편했던 텀블러가
# 									새로운 모습으로 나타났습니다. 마치 스폰지밥을 연상케 하는 디자인, 술을 넣고다니며 카우보이 권총을 차고 다녀야할 것 같은 늠름함은
# 									워터북이 주는 또 하나의 매력입니다. 특히 매력적인 사각형의 디자인은 패키지와 매우 잘 어울려 선물용으로도 제격이죠. 특별한 것이 필요한 날인가요?
# 									특별한 상품을 선물해보세요.',
# 	recommend_festival: '결혼식, 야유회',
# 	explain_package: '기본 패키지 제공'
# )

# # 썸네일 시드데이터
# Thumbnail.create(product_id: 1, img_url: '//image.29cm.co.kr/contents/itemIcon/201511/20151124190549.jpg?cmd=thumb&width=600&height=600')