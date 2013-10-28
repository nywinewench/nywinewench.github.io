module Jekyll
  module SquishFilter

    def squish input
      input.strip.gsub(/\s+/, ' ')
    end

  end
end

Liquid::Template.register_filter Jekyll::SquishFilter
