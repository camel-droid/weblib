<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<!-- head要素の読込み -->
<jsp:include page="/common/head.jsp" />

<body>
	<!-- ページヘッダの読込み -->
	<jsp:include page="/common/header.jsp" />

	<!-- メインコンテンツ -->
	<main id="menu">
		<article id="user">
			<h2>利用者管理</h2>
			<ul>
				<li><a href="./pages/user/registView.html">登録</a></li>
				<li><a href="./pages/user/searchView.html">更新</a></li>
			</ul>
		</article>
		<article id="book">
			<h2>資料管理</h2>
			<ul>
				<li><a href="./pages/book/registView.html">登録</a></li>
				<li><a href="./pages/book/searchView.html">更新</a></li>
			</ul>
		</article>
		<article id="service">
			<h2>図書館業務</h2>
			<ul>
				<li><a href="./pages/operation/searchView.html">貸出</a></li>
				<li><a href="#">返却</a></li>
				<li><a href="./pages/service/bookCatalogueView.html">資料目録</a></li>
				<li><a href="./pages/service/bookMasterView.html">資料台帳</a></li>
			</ul>
		</article>
	</main>

	<!-- ページフッタの読込み -->
	<jsp:include page="/common/footer.jsp" />
</body>

</html>