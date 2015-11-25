class User < ActiveRecord::Base

  # SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1
  has_many :messages

#フォロー関連
  # SELECT "followmaps".* FROM "followmaps" WHERE "followmaps"."user_id" = ?
  # user_idに紐づくFollowmapの情報を取得
  has_many :followmaps, class_name: "Followmap", foreign_key: :user_id

#SELECT "users".* FROM "users" INNER JOIN "followmaps" ON "users"."id" = "followmaps"."follow_id" WHERE "followmaps"."user_id" = ?
# user_idに紐づくFolowmapを通してfollow_idに対応するユーザを取り出す。
  has_many :follows, through: :followmaps

#フォロワー関連
  has_many :followermaps, class_name: "Followmap", foreign_key: :follow_id
  has_many :followers, through: :followermaps


end
