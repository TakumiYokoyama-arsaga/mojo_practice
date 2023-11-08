## Dockerコンテナ起動手順
- 1.`docker-compose build`を実行
- 2.`docker-compose up -d`を実行

## Dockerコンテナ内に入る手順
- `docker-compose exec -it mojo bash`を実行

## Dockerコンテナ停止手順
- `docker-compose down`を実行
- 削除するときは`docker-compose down --rmi all --volumes`を実行

## migrationファイル実行手順
- modelを元にマイグレーションファイルを作成。`--autogenerate`オプションをつけることで、`models.py`を元にすでにあるmigrationファイルとの差分のmigrationファイルを作成してくれる。
```powershell
$ alembic revision --autogenerate -m "任意のマイグレーションメッセージ"
```

- マイグレーションファイル実行コマンド
```powershell
$ alembic upgrade head
```

## modelを追加するときの注意事項
- modelを追加したら、`models/__init__.py`に追加したmodelをimportすること。
`models/__init__.py`に追加したmodelをimportしないと、マイグレーションファイルが作成されない



