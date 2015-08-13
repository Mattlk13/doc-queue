module DocQueue
  class ContentGenerator < Jekyll::Generator
    def generate(site)
      `script/doc-queue`
    end
  end
end
