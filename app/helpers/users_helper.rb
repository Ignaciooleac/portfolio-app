module UsersHelper
    def user_avatar(user)
			if user.avatar.attached?
			 	image_tag(user.avatar, size:'100x100')
			else
				image_tag('https://www.shareicon.net/data/256x256/2015/10/02/649910_user_512x512.png',alt: '', size:'100x100')
			end
		end

		def avatar_on_post(post)
			if post.user.avatar.attached?
        image_tag(post.user.avatar, size:'100x100')
    else
      image_tag('https://www.shareicon.net/data/256x256/2015/10/02/649910_user_512x512.png', size:'100x100')
		end
	end
end
