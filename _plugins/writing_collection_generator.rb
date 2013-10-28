module Jekyll
  WRITINGS_DIR = '_writings'

  class Site
    attr_accessor :writings
    alias_method :original_site_payload, :site_payload
    alias_method :original_reset, :reset

    def read_writings
      self.writings = []
      entries = get_entries '', WRITINGS_DIR

      entries.each do |f|
        if Writing.valid?(f)
          writing = Writing.new(self, self.source, f)
          writing.transform
          self.writings << writing
        end
      end

      self.writings.sort! { |a, b| b <=> a }
    end

    def site_payload
      payload = original_site_payload
      payload['site']['writings'] = self.writings
      payload
    end
  end

  class Writing < Post
    def initialize(site, source, name)
      @site = site
      @base = File.join source, WRITINGS_DIR
      @name = name

      self.process(name)
      self.read_yaml(@base, name)
    end

    # So what? I'm lazy.
    %w[
      dir
      id
      path
      relative_path
      url
    ].each do
      |m| define_method(m) { nil }
    end
  end

  class WritingCollectionGenerator < Generator
    attr_reader :site

    def generate(site)
      site.read_writings
    end
  end
end
