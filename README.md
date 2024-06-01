# gilotとは？
https://github.com/hirokidaichi/gilot
こちら確認してください。  
https://qiita.com/hirokidaichi/items/ceece347f808cc9d14dd  
制作者様のQiitaも一緒にどうぞ。 　

# 概要
Dockerコンテナ内でgilotが動作する様にインストールしてみる

# 利用方法
Makefileで最低限のコマンドを用意しているため利用してください。

## build
Docker imageをBuildします。 　
引数等は無いためそのまま実行してください。

## plot
Plot結果を.png形式で出力します。
REPO_PATHに、解析を行いたいGitRepositoryのパスを指定してください。
```
make REPO_PATH="/解析対象のディレクトリパス" plot
```
実行後、plot.pngが現在のディレクトリに出力されます。

## hotgraph
HotGraphを.png形式で出力します。
こちらも同様に
REPO_PATHに、解析を行いたいGitRepositoryのパスを指定してください。
```
make REPO_PATH="/解析対象のディレクトリパス" hotgraph
```
実行後、hotgraph.pngが出力されます。
