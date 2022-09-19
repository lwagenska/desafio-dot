class HomePage
    include Capybara::DSL

    def go
        visit '/'
    end

    def select_prod(card)
        find('#tbodyid .card .card-block .card-title', text: card).click
    end
end

