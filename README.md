# sandbox cookbook

# これを利用すると何が出来るか

Ruby2.1(と2.0と1.9)が動くVMが手に入ります。

Berkshelfとchrubyを利用してruby2.1(と2.0と1.9)をVMにインストールします。
chrubyのコマンドで簡単にrubyバージョンを切り替えることが出来ます。

host側でknifeは(とりあえず)使わず、
Vagrantfile内のchaf_soloブロック内の記述でがんばります。

このcookbookはBerkshelfのコマンド"berks cookbook sandbox"で生成されるcookbookを少し編集したものです



## Requirements

VirtualBoxとVagrantをインストールする必要があります。

1. [Virtual Box 4.3.6](https://www.virtualbox.org/wiki/Downloads "Virtual Box 4.3.6")
2. [Vagrant 1.4.1](http://www.vagrantup.com/downloads.html "Vagrant 1.4.1")

```
  % vagrant -v
  Vagrant 1.4.1
  % VirtualBox --help
  Oracle VM VirtualBox Manager 4.3.6
  (C) 2005-2013 Oracle Corporation
  All rights reserved.
```
    
## Usage

1. このcookbookをクローンします
  ```
  % git clone https://github.com/hoshinotsuyoshi/sandbox.git
  ```

2. Gemのインストール 

  ```
  % bundle --path vendor/bundle
  ```

3. 3rdパーティーCookbooksのインストール

  ```
  % bundle exec berks
  ```

4. Vagrantfileの編集
  hostnameとかipaddressを適宜編集します

5. VMの起動

  ```
  % vagrant up
  ```

  boxが元々ある状態で、約２０分かかります。
  boxが元々ない状態だと結構（プラス１時間くらい?）かかります

## vm側でのrubyの切り替え方
  まずログイン
  ```
  % vagrant ssh
  ```
  chrubyでインストール済みのrubyを確認できます
  ```
  [vagrant@vm ~]$ chruby
     1.9.3-p484
     2.0.0-p353
     2.1.0
   * embedded
  ```
  chruby [version]で利用するrubyをchangeできます
  ```
  [vagrant@vm ~]$ chruby 2.1
  [vagrant@vm ~]$ ruby -v
  ruby 2.1.0p0 (2013-12-25 revision 44422) [x86_64-linux]
  ```
  
## Recipes
いつか書く
## Author

Author:: hoshinotsuyoshi

