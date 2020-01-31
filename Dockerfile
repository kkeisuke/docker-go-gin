# ベースとなるイメージ
FROM golang:1.13.7-buster

# プロジェクトルートに移動する
WORKDIR /go/src/github.com/kkeisuke/docker-go-gin

# Air インストール
RUN curl -fLo /go/bin/air https://git.io/linux_air \
  && chmod +x /go/bin/air

# コンテナ実行時のデフォルトを設定する
# ライブリロードを実行する
CMD air
