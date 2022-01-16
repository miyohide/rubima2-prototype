module Jekyll
  class NavbarItemClass < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      @markup = markup
      super
    end

    def render(context)
      # contextはLiquid::Context。定義は以下を参照。
      # https://github.com/Shopify/liquid/blob/v4.0.3/lib/liquid/context.rb
      if context.registers[:page]['url'] == context.scopes[0]["item"]["link"]
        "nav-link active"
      else
        "nav-link"
      end
    end
  end
end

Liquid::Template.register_tag('navbar_item_class', Jekyll::NavbarItemClass)
