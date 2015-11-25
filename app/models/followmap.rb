class Followmap < ActiveRecord::Base
   #User側のfollowsと対応している。
    belongs_to :follow, class_name: "User", foreign_key: :follow_id

    #User側のfollowersと対応している。
    belongs_to :follower, class_name: "User", foreign_key: :user_id

end
