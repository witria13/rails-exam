class ForumPost < ApplicationRecord
	#user memiliki forum post
	#forum thrad memiliki  forum post
	belongs_to	:user
	belongs_to	:forum_thread, counter_cache: true

	validates	:content, presence: true

end
