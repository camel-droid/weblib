図書管理システム開発に必要なデータベース構築のSQLファイルを格納しています。

【データベース接続情報】

	1. JDBCドライバ：jdbc:postgresql:Driver
	2. 接続先DB名：weblibdb
	3. 接続先URL：以下のどちらでもよい。
			jdbc:postgresql:weblibdb
			jdbc:postgresql://localhost:5432/weblibdb
	4. 接続ユーザ名：librarian
	5. 接続パスワード：himitu

【格納SQLファイル概要】
	1. 01_create_weblibdb.sql：Shift-JIS
			図書管理システム用データベースweblibdb、weblibdbデータベースにアクセスできるユーザlibrarianを作成します。
			このスクリプトは管理者権限（postgresdユーザ）で実行してください。

	2. 02_init_weblibdb.sql：UTF-8
			図書管理システムに必要なテーブルの定義群です。
			このスクリプトを実行するためにはweblibdbのユーザ権限（librarianユーザ）で実行してください。
			実行するにあたっては、現在の接続を切断（\qコマンドを実行）してから、以下のコマンドでlibrarioanユーザ権限によってweblibdbにアクセスし直してください。

				$ psql weblibdb librarian [Return]
				$ Password for librarian: (「himitu」と入力) [Return]

	3. 03_insert_weblibdb.sql：UTF-8
			各テーブルに開発用サンプルレコードを挿入します。

	※ ファイル名の後ろの「：」以降には、作成した文字コードを示しています。
	　 Shift-JISのファイルはWindows環境におけるデータベース構築の際に、PostgreSQLのコンソールアプリであるPSQLから \iコマンド で読み込んで実行します。
	　 UTF-8のファイルは、eclipseのDBViewerまたはデータ開発プラグインのSQLビューから実行できます。
