module Jekyll
  module NormalizeFilter

    def normalize input
      input.downcase.gsub(/\s+/, '-')
    end

  end
end

Liquid::Template.register_filter Jekyll::NormalizeFilter
