class Channel < ApplicationRecord
	has_many :messages, dependent: :destroy
	has_many :channel_users
	has_many :users, through: :channel_users

	# after_commit on: :create do
	# 	broadcast_append_to(
	# 		channel,
	# 		partial: 'channels/channel',
	# 		locals: {channel: self},
	# 		target: 'channels'
	# 	)
	# end
end
