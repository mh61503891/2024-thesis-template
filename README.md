# 卒論・修論本論用LaTeXテンプレート

## ファイル構成

- main.tex: 本文
- bib-paper.bib: 論文の参考文献
- bib-book.bib: 書籍の参考文献
- bib-misc.bib: Webサイトなどの上記以外の参考文献
- fig/: 本文から参照する図を格納するディレクトリ（.pdf、.png、.jpg等）
- res/: 図の作成元のデータ（.drawio、.py、.csv、.json等）

## 備考

- ファイル構成を変更しないようにしてください。
- main.texを分割しないようにしてください。

## 補助ツール

### セットアップ

[Bun](https://bun.sh/docs/installation)をインストールし、次のコマンドを用いて、`./package.json`に記載された関連パッケージをインストールする。

```sh
$ bun install
```

### 使用方法

ファイルの変更を監視して自動的に再コンパイルする。

```sh
$ bun watch
```

コンパイルする。

```sh
$ bun build
```

Bibファイルを整形して標準出力へ出力する。

```sh
$ bun format:bib
```

Bibファイルを整形して上書きする。Git管理下で行うこと。

```sh
$ bun format:bib:modify
```

中間ファイルを削除する。

```sh
$ bun clean
```
