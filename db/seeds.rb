# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first
unless user
    User.create(email: "ken@email.com",name: "堅志郎",password: "kenken",admin: true)
    User.create(email: "a@email.com",password: "aaaaaa",name: "ken")
    User.create(email: "b@email.com",password: "bbbbbb",name: "kazuma")
    User.create(email: "c@email.com",password: "cccccc",name: "広大")
    User.create(email: "d@email.com",password: "dddddd",name: "完太郎")
end

article = Article.first
unless article
    Article.create(title: "first article",body: "test",user_id: 1)
    Article.create(title: "test1",body: "test",user_id: 2)
    Article.create(title: "test2",body: "test",user_id: 3)
    Article.create(title: "test3",body: "test",user_id: 4)
    Article.create(title: "test4",body: "test",user_id: 5)
    Article.create(title: "test5",body: "test",user_id: 2)
    Article.create(title: "test6",body: "test",user_id: 3)
    Article.create(title: "test7",body: "test",user_id: 5)
    Article.create(title: "test8",body: "test",user_id: 4)
    Article.create(title: "test9",body: "test",user_id: 3)
end

comment = Comment.second
unless comment
    Comment.create(user_id: 2,article_id: "3",content: "comment-test",user_name: "ken")
    Comment.create(user_id: 2,article_id: "9",content: "comment-test",user_name: "完太郎")
    Comment.create(user_id: 5,article_id: "9",content: "comment-test-reply",user_name: "広大")
    Comment.create(user_id: 2,article_id: "8",content: "comment-test",user_name: "kazuma")
    Comment.create(user_id: 4,article_id: "8",content: "comment-test",user_name: "ken")
    Comment.create(user_id: 5,article_id: "8",content: "comment-test-reply",user_name: "ken")
    Comment.create(user_id: 6,article_id: "7",content: "comment-test",user_name: "ken")
    Comment.create(user_id: 7,article_id: "7",content: "comment-test",user_name: "完太郎")
    Comment.create(user_id: 5,article_id: "7",content: "comment-test-reply",user_name: "kazuma")
end