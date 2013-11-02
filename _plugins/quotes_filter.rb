module Jekyll
  module QuotesFilter

    def double_to_single_quotes input
      input.strip.gsub('"', "'")
    end

  end
end

Liquid::Template.register_filter Jekyll::QuotesFilter
