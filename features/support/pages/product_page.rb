class ProductPage
    include Capybara::DSL

    def add_prod
        find('.btn', text: 'Add to cart').click
    end

    def accept_alert
        page.driver.browser.switch_to.alert.accept
    end

    def go_cart
        find('.navbar-collapse .nav-item #cartur', text: 'Cart').click
    end

    def go_home
        find('.navbar-collapse .nav-item', text: 'Home').click
    end
end 