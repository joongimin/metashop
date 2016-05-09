brand = Brand.create(
  name: 'Saks',
  url: 'http://www.saksfifthavenue.com',
  mobile_url: 'http://m.saks.com'
)
brand.brand_links.create!(
  name: 'Theory',
  url: 'http://www.saksfifthavenue.com/search/EndecaSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ns=P_markdowndate|1||||P_brandname||P_product_code&Ne=399545539&N=1553%20306418048+1564+4294904106+4294904055',
  mobile_url: 'http://m.saks.com/eSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ns=P_markdowndate|1||||P_brandname||P_product_code&Ne=399545539&N=1553%20306418048+1564+4294904106+4294904055&PA=TRUE',
)
brand.brand_links.create!(
  name: 'Vince',
  url: 'http://www.saksfifthavenue.com/search/EndecaSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ns=P_markdowndate|1||||P_brandname||P_product_code&Ne=399545539&N=1553%20306418048+1663+4294903989+4294904055',
  mobile_url: 'http://m.saks.com/eSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ns=P_markdowndate|1||||P_brandname||P_product_code&Ne=399545539&N=1553%20306418048+1663+4294903989+4294904055&PA=TRUE'
)
brand.brand_links.create!(
  name: 'Tory Burch',
  url: 'http://www.saksfifthavenue.com/search/EndecaSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ne=399545538&N=1553%20306418048+4294950150+4294904106+4294904079',
  mobile_url: 'http://m.saks.com/eSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ne=399545538&N=1553%20306418048+4294950150+4294904106+4294904079&PA=TRUE'
)
brand.brand_links.create!(
  name: 'DVF',
  url: 'http://www.saksfifthavenue.com/search/EndecaSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ne=399545538&N=1553%20306418048+4294929008+4294904106+4294904079',
  mobile_url: 'http://m.saks.com/eSearch.jsp?Ns=P_markdowndate%7c1%7c%7c%7c%7cP_brandname%7c%7cP_product_code&Ne=399545538&N=1553%20306418048+4294929008+4294904106+4294904079&PA=TRUE'
)

brand = Brand.create!(name: 'Saks OFF5th', url: 'http://www.saksoff5th.com')
brand.brand_links.create!(name: 'Theory', url: 'http://www.saksoff5th.com/womens-apparel?q=theory&prefn1=size&srule=New%20Arrivals&prefv1=X-Small%7C00&sz=36&start=0&totalProductsPerPage=36')
brand.brand_links.create!(name: 'Vince', url: 'http://www.saksoff5th.com/women?q=vince&prefn1=size&srule=New%20Arrivals&prefv1=XX-Small%7C0&sz=60&start=0&totalProductsPerPage=60')
brand.brand_links.create!(name: 'DVF', url: 'http://www.saksoff5th.com/women?q=dvf&prefn1=size&srule=New%20Arrivals&prefv1=X-Small%7C0&sz=60&start=0&totalProductsPerPage=60')

brand = Brand.create!(
  name: 'Nordstrom',
  url: 'http://shop.nordstrom.com',
  mobile_url: 'http://m.shop.nordstrom.com'
)
brand.brand_links.create!(name: 'Theory', url: 'http://shop.nordstrom.com/sr?keyword=theory&filtercategoryid=6000121&sort=Newest&size=%272%3Aregularxs~~1%27')
brand.brand_links.create!(name: 'Vince', url: 'http://shop.nordstrom.com/sr?keyword=vince&filtercategoryid=6000121&size=%272%3Aregularxs~~1%27&sort=Newest')
brand.brand_links.create!(name: 'Tory Burch', url: 'http://shop.nordstrom.com/c/tory-burch-sale-items?origin=leftnav&flexi=8000786_60132760%7C8000786_8000802%7C8000786_8000818%7C8000786_60133827%7C8000786_60129453%7C8000786_8000843%7C8000786_8000851%7C8000786_60129766%7C8000786_8000855%7C8000786_60177530&sort=Newest')
brand.brand_links.create!(name: 'DVF', url: 'http://shop.nordstrom.com/sr?keyword=dvf&filtercategoryid=6000121&size=%272%3Aregularxs~~1%27&sort=Newest')
brand.brand_links.create!(name: '--', url: 'http://shop.nordstrom.com/c/sale-womens-shoes?origin=topnav&cm_sp=Top%20Navigation-_-Sale-_-Women%27s%20Sale_Shoes&offset=1&sort=Newest&size=%278%3A4~~1%27')

brand = Brand.create!(name: 'Bloomingdales', url: 'http://www1.bloomingdales.com')
brand.brand_links.create!(name: 'Theory', url: 'http://www1.bloomingdales.com/shop/theory/theory-womens-clothing/Size_normal,Special_offers,Productsperpage,Sortby/P%7C00,Sales%20%26%20Offers,180,NEW_ITEMS?id=1002846')
brand.brand_links.create!(name: 'Vince', url: 'http://www1.bloomingdales.com/shop/vince/vince-clothing-for-women/Size_normal,Special_offers,Productsperpage,Sortby/XXS%7C00,Sales%20%26%20Offers,180,NEW_ITEMS?id=1004124')
brand.brand_links.create!(name: 'Tory Burch', url: 'http://www1.bloomingdales.com/shop/tory-burch/tory-burch-womens-clothing/Size_normal,Special_offers,Productsperpage,Sortby/XXS%7CXS%7C0,Sales%20%26%20Offers,180,NEW_ITEMS?id=1002728')

brand = Brand.create!(name: 'Nordstrom Rack', url: 'https://www.nordstromrack.com')
brand.brand_links.create!(name: 'Theory', url: 'https://www.nordstromrack.com/brands/Theory/Women/Clothing/Bottoms?sizes%5B%5D=XXS+(00)&sort=featured&includePersistent=true&includeFlash=false')
brand.brand_links.create!(name: 'Vince', url: 'https://www.nordstromrack.com/shop/search?sizes%5B%5D=XXS+(00)&brands%5B%5D=VINCE.&sort=featured&includePersistent=true&includeFlash=false&query=vince&division=Women&department=Clothing&class=Tops')
brand.brand_links.create!(name: 'Tory Burch', url: 'https://www.nordstromrack.com/shop/search?sizes%5B%5D=XS+(0-2)&sort=featured&includePersistent=true&includeFlash=false&query=dvf&division=Women&department=Clothing&class=Dresses')
