# Runner Spece

## 【本番環境】
ゲストユーザーで簡単ログインできます。  
http://52.198.187.191/

## 【このアプリでできること】
ユーザー登録を行い運動した記録を走行記録として投稿することができます。  
自身が使っている運動グッズなどの画像を投稿し情報共有ができます。
大会記録などを投稿し、情報の共有をすることができます。
ユーザーが投稿時の走行記録をランキング表示し、ユーザー間で切磋琢磨することができます。

## 【なぜそのアプリを作ったか】
IT業界が進歩していく中で、3人に1人が運動不足と言う結果(WHO)が出ており、  
前職が自衛官でもある自分が何か運動を促進するようなアプリ作れないかと思い作成しました。　
また他にも、自分自身走る事が好きで、情報や記録を共有することで、  
利用者の運動への意欲を向上させる事を目的に作成しました。

## 【言語】
Ruby 2.6.5  
Ruby on Rails 6.0.0  
HTML  
CSS  
jQuery  

## 【機能一覧】
■ユーザー機能(devise)  
・新規登録機能  
・ログイン、ログアウト機能  
・登録情報変更機能  
・簡単ログイン機能  
・管理者権限機能(ユーザー情報の編集、削除、投稿の編集、削除)  

■走行記事  
・投稿機能 
・画像投稿機能  
・削除機能  
・編集機能  
・走行記録機能  
・タグ付け機能  

■走行記事に対するいいね機能(非同期)  
・いいね機能  
・取り消し機能  

■フォロー、フォロワー機能  
・ユーザー間のフォロー、フォロワー機能  

■走行記事に対するコメント機能(非同期)  
・コメント機能  

■ランキング機能  
・累計走行距離のランキング機能  

■検索機能  
・文字検索機能  
・タグ検索機能  

■ページネーション機能  
・kaminariによるページネーション機能  

■その他の機能  
・ユーザー詳細ページでの、累計走行距離表示機能  
・ユーザー詳細ページでの、ランキング順位表示機能  
・ユーザー詳細ページでの、総いいね表示機能  
・ユーザー詳細ページでの、投稿数表示機能  
・ユーザー詳細ページでの、フォロー、フォロワー数表示機能  

## 【工夫した事】
・ユーザー目線を意識して投稿したくなるようなUI/UXにした事  
・ランキング機能を実装し、競争性を意識した事
・TECHCAMPで学んだ事を活かした事   


## 【課題や今後実装したい機能】
・ランキング機能の充実
・文字検索の非同期機能  
・APIを盛り込む事  
 
## 【DB設計】
![Untitled Diagram](https://user-images.githubusercontent.com/58378612/87174996-fa09df00-c312-11ea-948b-427cc37c355d.png)

