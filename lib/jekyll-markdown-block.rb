module Jekyll
  class MarkdownBlock < Liquid::Block
    alias_method :render_block, :render

    def initialize(tag_name, markup, tokens)
      super
    end

    # Uses the default Jekyll markdown parser to
    # parse the contents of this block
    #
    def render(context)
      site = context.registers[:site]
      converter =
      if site.respond_to?(:find_converter_instance)
        site.find_converter_instance(Jekyll::Converters::Markdown)
      else
        site.getConverterImpl(Jekyll::Converters::Markdown)
      end
      converter.convert(render_block(context))
    end
  end
end

Liquid::Template.register_tag('markdown', Jekyll::MarkdownBlock)

