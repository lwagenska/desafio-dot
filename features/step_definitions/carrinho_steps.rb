#Steps do cenário add_product
Dado('que estou no site da DemoBlaze') do
    @home_page.go
end

Quando('adiciono o produto {string} ao carrinho') do |card|
    @card = card

    @home_page.select_prod(@card)
    @produtc_page.add_prod
    sleep 3

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Product added'

    @produtc_page.accept_alert
end

Então('devo visualizar o mesmo no carrinho de compras') do
    @produtc_page.go_cart

    expect(@cart_page.product(@card)).to have_text @card
end

#Steps do cenário add_products, notar que ele utiliza o mesmo Dado do cenário anterior
Quando('adiciono os produtos {string} e {string} ao carrinho') do |product_1, product_2|
    @product_1 = product_1
    @product_2 = product_2

    @home_page.select_prod(@product_1)
    @produtc_page.add_prod
    sleep 3
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Product added'
    @produtc_page.accept_alert

    @produtc_page.go_home

    @home_page.select_prod(@product_2)
    @produtc_page.add_prod
    sleep 3
    expect(msg).to eql 'Product added'
    @produtc_page.accept_alert
end

Então('devo visualizar os mesmos no carrinho de compras') do
    @produtc_page.go_cart

    expect(@cart_page.product(@product_1)).to have_text @product_1
    expect(@cart_page.product(@product_2)).to have_text @product_2
end

#Steps do cenário delete_product
Dado('que estou no carrinho de compras com o produto {string}') do |product|
    @product = product
    steps %{
    Dado que estou no site da DemoBlaze
    Quando adiciono o produto "#{@product}" ao carrinho
    Então devo visualizar o mesmo no carrinho de compras 
    }
end

Quando('deleto o produto') do
    @cart_page.product_delete(@product)
end

Então('não devo mais visualizar o mesmo no carrinho') do
    expect(page).not_to have_text @product
end

#Steps do cenário delete_all_products
Dado('que estou no carrinho de compras com o produto {string} e {string}') do |prod_1, prod_2|
    @prod_1 = prod_1
    @prod_2 = prod_2
    steps %{
    Dado que estou no site da DemoBlaze
    Quando adiciono os produtos "#{@prod_1}" e "#{@prod_2}" ao carrinho
    Então devo visualizar o mesmo no carrinho de compras 
    }
end

Quando('deleto todos os produtos') do
    @cart_page.product_delete(@prod_1)
    sleep 3
    @cart_page.product_delete(@prod_2)
end

Então('não devo mais visualizar nenhum produto no carrinho') do
    expect(page).not_to have_text @prod_1
    expect(page).not_to have_text @prod_2
end