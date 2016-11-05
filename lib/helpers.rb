include Nanoc::Helpers::Rendering

def gallery_li_class(item, pill_name)
  item.identifier.without_exts == pill_name ? 'active' : ''
end
