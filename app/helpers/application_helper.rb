module ApplicationHelper

  def gravatar_for(user, options = {size: 60})
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?d=https%3A%2F%2Fc2.staticflickr.com%2F5%2F4185%2F33855526460_f36e2fc642_o.png"
    image_tag(gravatar_url, size: "60", class: "img-circle")
  end
end
