module PostsHelper
	def post_thumbnail(post,height,width)
		if post.thumbnail.attached?
			image_tag post.thumbnail.variant(resize: "#{height}x#{width}!")
		else
      image_tag('https://d9qzjwuieyamt.cloudfront.net/res/images/items/450default_sd.jpg?ih20190211')
		end
	end
end
