# ToDoリスト

## 使用した技術要素

- Ruby 2.4.2
- Ruby on Rails 5.1.5	

## 全体の設計・構成

### 画面・機能一覧

- トップ画面
  - ToDoの追加
  - ToDoの表示
  - ToDoの状態変更
  - ToDoの削除
- ToDo編集画面
  - ToDoの表示
  - ToDoの編集
- 検索画面
  - ToDoの検索
  - ToDoの表示
  - ToDoの状態変更
  - ToDoの削除

### テーブル設計

```
テーブル名：tasks

id          :integer     not null, primary key
name        :string(30)
status      :integer
due_date    :datetime
created_at  :datetime    not null
updated_at  :datetime    not null
```

## 開発環境のセットアップ手順

まずはリポジトリを手元にクローンしてください。
```
$ git clone https://github.com/keiichirotakahashi/todo_list.git
```

その後、次のコマンドで必要になる RubyGems をインストールします。
```
$ bundle install --without production
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事に通ったら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```