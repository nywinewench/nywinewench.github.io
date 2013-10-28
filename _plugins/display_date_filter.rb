module Jekyll
  module DisplayDateFilter

    def display_date input
      input.strftime "%d %b %y"
    end

  end
end

Liquid::Template.register_filter Jekyll::DisplayDateFilter
