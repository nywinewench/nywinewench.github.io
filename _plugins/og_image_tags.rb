# This should really be done with a generator that scrapes the content
# and produces a usable array of images for each page. Alas!

module Jekyll
  module OgImageTagsFilter
    DOMAIN = Jekyll.configuration({})['domain']
    IMG_TAG_SCRAPER = /src="(\/.+?)"/
    IMG_MARKUP_SCRAPER = /!\[.+?\]\((\/.+?\.\w{3})/

    def tag_html(url)
      "<meta property='og:image' content='http://#{DOMAIN}#{url}'>"
    end

    def og_image_tags page_content
      tags = []

      page_content.scan(IMG_TAG_SCRAPER).each do |img_src|
        tags << tag_html(img_src[0])
      end

      page_content.scan(IMG_MARKUP_SCRAPER).each do |img_src|
        tags << tag_html(img_src[0])
      end

      tags.join("\n")
    end

  end
end

Liquid::Template.register_filter Jekyll::OgImageTagsFilter
