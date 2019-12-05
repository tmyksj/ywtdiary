# ywtdiary
ywtdiary は、 y: やったこと、 w: わかったこと、 t: 次にやること、を記録できるツールです。
ywt の記録ほかに、 ywt それぞれに書いたことをタグクラウドの形式確認できるほか、 ywt にラベルをつけることが可能です。

※ ywt は、アジャイル開発でよく使われるふりかえりツールです。  
※ タグクラウド、ラベルの付与は開発中です。

## スクリーンショット
- <img alt="ホーム" src="doc/assets/home%23index.png">
- <img alt="ywt 作成" src="doc/assets/ywts%23new.png">

## 開発状況
kanban @ projects を見てください。

## for developers
### 開発サーバの立ち上げ
1. `docker-compose up` でコンテナを立ち上げます。
2. `docker-compose exec app bundle exec rails s -b 0.0.0.0` で開発サーバを立ち上げます。
