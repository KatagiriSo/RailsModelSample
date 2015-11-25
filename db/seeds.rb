# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#データ削除
User.delete_all
Message.delete_all
Followmap.delete_all

# id初期化
User.connection.execute("delete from sqlite_sequence where name='users'")
Message.connection.execute("delete from sqlite_sequence where name='messages'")
Followmap.connection.execute("delete from sqlite_sequence where name='followmaps'")



User.create()
User.create()
User.create()

Message.create(user_id: 1, text: "あー")
Message.create(user_id: 1, text: "あーい")
Message.create(user_id: 2, text: "らー")
Message.create(user_id: 2, text: "まー")
Message.create(user_id: 2, text: "さー")
Message.create(user_id: 3, text: "しーし")
Message.create(user_id: 3, text: "て")
Message.create(user_id: 3, text: "ほげ")
Message.create(user_id: 3, text: "ぽーる")

Followmap.create(user_id: 1, follow_id: 2)
Followmap.create(user_id: 1, follow_id: 3)
Followmap.create(user_id: 2, follow_id: 3)
Followmap.create(user_id: 3, follow_id: 2)
