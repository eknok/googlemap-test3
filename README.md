# README
Rails5でGoogleMapを表示させる
## 詳細
詳しくはレポジトリにある`googlemap-test2`に記載  
今回は`gem geocoder`のみでgooglemapを表示させる  

## MVC
`rails g scaffold map address:string latitude:float longitude:float`

## フロー
デモやherokuにはあげていないので、、  
→ ローカルで`/maps/new`で住所`address`作成する  
→ `maps/show`でgooglemap上にピンを表示される  

## メモ
railsの変数をjs内で使える`gem gon`を導入。  
erb内のscript/jsでは変数は使えないと間違えたが、js内で今後rails変数を使うことはありそうと思いそのままにしておく。(`Gemfile`)  

今後はDB内に入っているデータを地図上にまとめて表示することもできそう  
(ピンにカウント数を表示)  

## 参考
[railsの変数をviewのjs内](http://kaorina.hatenablog.com/entry/2016/10/28/140930)  

[rails5でGoogleMapを表示する](https://qiita.com/enzen/items/9a919a75ebf0a34e7b91)  
