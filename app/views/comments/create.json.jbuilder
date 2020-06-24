json.text @comment.text
json.user_id @comment.user.id
json.created_at @comment.created_at.strftime("%m月%d日 %H時%M分")
json.image @comment.user.image_url
json.user_name @comment.user.name
json.tweet_id @comment.tweet.user_id
