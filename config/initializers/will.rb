def will_image_tag(key, options = {})
  classNames = options[:class] ? options[:class] : ""
  return "<img class='#{classNames}' src='http://res.cloudinary.com/dgosrthsf/image/upload/#{key}' alt='wills special image'>".html_safe
end
