#language: pt

@cart
Funcionalidade: Carrinho de Compras
    Para que eu possa visualizar todos os produtos selecionados
    Sendo um usuário não cadastrado
    Posso ter um carrinho de compras que exiba todos os produtos que selecionei

    @add_product
    Cenário: Adicionar um produto no carrinho
        Dado que estou no site da DemoBlaze
        Quando adiciono o produto "Samsung galaxy s6" ao carrinho
        Então devo visualizar o mesmo no carrinho de compras

    @add_products
    Cenário: Adicionar mais de um produto no carrinho
        Dado que estou no site da DemoBlaze
        Quando adiciono os produtos "Samsung galaxy s7" e "Sony xperia z5" ao carrinho
        Então devo visualizar os mesmos no carrinho de compras

    @delete_product
    Cenário: Deletar um produto no carrinho
        Dado que estou no carrinho de compras com o produto "Samsung galaxy s6"
        Quando deleto o produto
        Então não devo mais visualizar o mesmo no carrinho

    @delete_all_products
    Cenário: Deletar todos os produtos no carrinho
        Dado que estou no carrinho de compras com o produto "Samsung galaxy s7" e "Sony xperia z5"
        Quando deleto todos os produtos
        Então não devo mais visualizar nenhum produto no carrinho