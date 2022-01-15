module Jekyll
  class NavbarItemClass < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      # puts "#{context.registers[:page]['url']} , #{@text}"
      if context.registers[:page]['url'] == @text
        "nav-link active"
      else
        "nav-link"
      end
    end
  end
end

Liquid::Template.register_tag('navbar_item_class', Jekyll::NavbarItemClass)
