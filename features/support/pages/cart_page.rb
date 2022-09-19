class CartPage
    include Capybara::DSL

    def product(product)
        find('table tbody tr', text: product)
    end

    def product_delete(product)
        prod = find('table tbody tr', text: product)
        prod.find('a', text: 'Delete').click
    end
end 