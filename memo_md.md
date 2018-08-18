# 開発メモmemo

## 作るもの
- 夫婦間レシピ共有アプリ
    - 「今日晩御飯どうする？」を解決する

- 夫は、妻が何を作れるのかをきちんと把握していないため、何がいいか聞かれても答えられない

- 外食の場合には、一緒に食べたご飯を共有しておくとよい
    - 同様に、まだ行ったことのないお店も共有しておくと便利(今日ここいってみようか？的な)

- テレビで紹介されたレシピのメモなど
    - 旬の野菜、特売の野菜など
  
## 必要なもの

- ログイン
    - ユーザー(**user**)
        - 名前(**name**) ※必須だがかぶってもよい
        - メールアドレス(**email**) ※必須、ユニーク
        - パスワード(**name**) ※5文字以上。半角英数のみ
        - グループ(**name**)  ※null許容。後から追加できる

    - グループ

- メニュー一覧 (**main_menu**)
    - レシピリスト(**recipe**)
        - 一覧
            - CRUD
                - 構成要素は下記の通り
                - タイトル (**title**)
                - お料理のサマリ(**text**)
                - 材料(**material**)
                - 作り方(**howToMake**)
                - ジャンル(**genre**)
                - 作った（ある/なし）(**madeIt**)
                - 編集日時(**lastUpdate**)
                - 画像（**image**)
                - グループ(**group**)※データが共有されるグループ
                - 作成者(**author**)※作成者とグループユーザーのみ閲覧可能
<br>

    - お店リスト(**shop**)
        - 一覧
            - CRUD
                - 構成要素は下記の通り
                - 店名
                - 気になるメニュー
                - 住所 (googlemapを引っ張ってくる)
                - 定休日
                - ジャンル
                - 行った（ある/なし）                
    - メモ(memo)
        - 一覧
            - CRUD
                - 構成要素は下記の通り
                - タイトル
                - テキスト
                - タグ


<style>
html {
	background-color: #f3f3f3;
	color: #656565;
}
body {
	font-family: "Minion Pro","Chaparral Pro",Georgia,serif;
	margin-left:auto;
	margin-right:auto;
	padding: 2em;
	border: 0;
	font-size: 1em;
	line-height: 1.7em;
	// font-family: "Source Sans Pro","Helvetica Neue",Helvetica,sans-serif;
	max-width: 35em;
}
a {
	padding:0 0.3em 0.1em 0.3em;
    color: #656565;
	background: #f7f7f7;
    text-decoration:none;
    border: 1px solid #d4d4d4;
	border-radius: 4px;
}
a:hover {
	padding:0 0.3em 0.1em 0.3em;
    text-decoration: none;
    background:-webkit-gradient(linear, 80% 20%, 80% 100%, from(#315983), to(#224C78));
    color: #f7ffff;
    border-top: 1px solid rgb(69,105,143);
    border-bottom: 1px solid rgb(47,76,105);
    border-right: 1px solid rgb(47,76,105);
    border-left: 1px solid rgb(47,76,105);
	border-radius: 4px;
	box-shadow: 0px 0px 0px 1px rgb(47,76,105);;
}

h1, h2, h3, h4, h5, h6 {
	text-align: left;
	color: rgb(12,139,186);	
	line-height: 1;
	font-weight: 600;
}

h1 {
	text-align: center;
	font-size: 2em;
}
h2 {
	font-size: 1.6em;
}
h3 {
	font-size: 1.4em;
}
h4 {
	font-size: 1.2em;
}
h5 {
	font-size: 1.1em;
}
h6 {
	font-style: italic;
	font-size: 1em;
}

ol, ul {
	margin-left: -15px;
	margin-right: 25px;
}

ul li {
     list-style: none;
   }

ul li:before {
	content:'\2010';
	display: block;
	position: relative;
	max-width: 0;
	max-height: 0;
	left: -.8em;
	top: -.1em;
	color: rgb(12,139,186);
	font-size:1.2em;
}


   
li {
	font-size: .9em;
}

li p {
	-webkit-margin-before: 0;
	-webkit-margin-after: 0;
}

.footnote {
	font-size: 50%;
	vertical-align: super;
}
div.footnotes {
	font-size: 80%;
}
pre, code {
	white-space: pre-wrap;
}
blockquote {
	background:rgb(230,230,230);
	display: block;
	font-style:italic;
	font-weight:200;
	color: rgb(12,139,186);	
	padding:0.2em 2em 0.2em 2em;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0;
	-webkit-margin-end: 0;
}

code {
	font-family: Inconsolata,"Courier Prime",mono;
	font-size:80%;
	padding: 2px;
	color: rgb(20,126,73);
	background: rgb(224,232,228);
}

/*
   This document has been created with Marked.app <http://marked2app.com>
   Please leave this notice in place, along with any additional credits below.
   ---------------------------------------------------------------
   Title: Ulysses Freestraction Light
   Author: Jonathan Poritsky <http://candlerblog.com>
   Description: Based on the Freestraction color scheme used in Ulysses III <http://www.ulyssesapp.com>.
   For more information read the introductory post: http://candlerblog.com/2013/04/11/ulysses-iii-and-marked/ 
*/

</style>



