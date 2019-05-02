module PostsHelper
	def post_thumbnail(post)
		if post.thumbnail.attached?
			image_tag(post.thumbnail, style:'width:100%')
		else
      image_tag('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTStpHWnWiVxtiAbTZMr81Ve5UBYdqn7lx8MvqJKzJpYBGrIrP', style:'width:100%')
		end
	end
end
