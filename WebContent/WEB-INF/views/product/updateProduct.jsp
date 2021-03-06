<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>修改产品</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}

@charset "utf-8";

select, textarea, input[type="text"], input[type="password"], input[type="datetime"],
	input[type="datetime-local"], input[type="date"], input[type="month"],
	input[type="time"], input[type="week"], input[type="number"], input[type="email"],
	input[type="url"], input[type="search"], input[type="tel"], input[type="color"],
	.uneditable-input {
	padding: 1px;
}

select {
	height: 24px;
}

.radio {
	font-size: 11px;
	margin-bottom: 4px;
}

form {
	margin: 0 0 5px;
}

.page {
	text-align: right;
	margin-right: 25px;
	margin-top: 5px;
}

.page a {
	margin-left: 5px;
}

.page .current {
	margin-left: 5px;
	color: red;
}

.table td input[type="checkbox"] {
	padding: 0;
	margin: 0;
}

.table th input[type="checkbox"] {
	padding: 0;
	margin: 0;
}

.table td, .table th {
	padding-top: 8px;
	padding-bottom: 4px;
	line-height: 20ppx;
}

.table th {
	background-color: #eaeaea;
}

.definewidth {
	width: 96%;
	margin: auto;
}

.m20 {
	padding-top: 20px;
}

.tableleft {
	text-align: right;
	padding-left: 5px;
	background-color: #f5f5f5;
}
</style>
</head>

<body>
<%
 if ((String)request.getAttribute("updateStr") == "true") {
 %>
 <script>
 alert("产品修改失败！请重新修改。");
 </script>
 <%
 }
 %>
	<form  id="updateProduct_form" action="updateproduct" method="post"
		class="definewidth m20" enctype="multipart/form-data">
		<input type="hidden" name="id" id="id" value="${updateP.id}" /> 
		<input type="hidden" name="orgUrl" id="orgUrl" value="${updateP.PTitleImg}" />
		<table class="table table-bordered table-hover definewidth m10">

			<tr>
				<td class="tableleft">所属分站</td>
				<td><select id="pcid" name="pcid">
						<option value="${updateP.productClass.id}">${updateP.productClass.CName}</option>
                      <c:forEach items="${pClasses}" var="pc" varStatus="st">
							<option value="${pc.id}">${pc.CName}</option>
						</c:forEach>
                      </select></td>
				</select></td>
			</tr>
			<tr>
				<td class="tableleft">名称</td>
				<td><input type="text" name="pTitle" id="pTitle" value="${updateP.PTitle}" /></td>
			</tr>
			<tr>
				<td class="tableleft">标题图片</td>
				<td><input name="pTitleImg" id="pTitleImg" type="file" accept="image/*" /></td>
			</tr>


			<tr>
				<td class="tableleft">简介</td>
				<td><input type="text" name="pRemark" id="pRemark" value="${updateP.PRemark}" /></td>
			</tr>

			<tr>
				<td class="tableleft">申请人数</td>
				<td><input type="text" name="pNum" id="pNum" value="${updateP.PNum}" /></td>
			</tr>
			
			<tr>
				<td class="tableleft">最高额度</td>
				<td><input type="text" name="pED" id="pED" value="${updateP.PED}" /></td>
			</tr>

			<tr>
				<td class="tableleft">放贷时间</td>
				<td><input type="text" name="pFDSJ" id="pFDSJ" value="${updateP.PFDSJ}" /></td>
			</tr>

			<tr>
				<td class="tableleft">利息</td>
				<td><input type="text" name="pLX" id="pLX" value="${updateP.PLX}" /></td>
			</tr>

			<tr>
				<td class="tableleft">借款期限</td>
				<td><input type="text" name="pJKQX" id="pJKQX" value="${updateP.PJKQX}" /></td>
			</tr>
			<tr>
				<td class="tableleft">跳转地址</td>
				<td><input type="text" name="pUrl" id="pUrl" value="${updateP.PUrl}" /></td>
			</tr>
			<tr>
				<td class="tableleft">排序</td>
				<td><input type="text" name="pSortID" id="pSortID" value="${updateP.PSortID}" /></td>
			</tr>

			<tr>
				<td width="10%" class="tableleft">激活状态</td>
				<td>
					<input type="radio" id="pActivate1" name="pActivate" value="0" 
				${updateP.PActivate=='0'? 'checked' : '' } />未激活
				<input type="radio" id="pActivate2" name="pActivate" value="1" 
				${updateP.PActivate=='1'? 'checked' : '' }  />激活</td>
				</td>
			</tr>
			
			<tr>
				<td width="10%" class="tableleft">状态</td>
				<td>
				<input type="radio" id="pState1" name="pState" value="1" 
				${updateP.PState=='1'? 'checked' : '' } />热销
				<input type="radio" id="pState2" name="pState" value="0" 
				${updateP.PState=='0'? 'checked' : '' }  />最新</td>
			</tr>

			<tr>
				<td class="tableleft"></td>
				<td>
					<button type="submit" name="saveid" id="saveid"
						class="btn btn-primary" type="button">保存修改</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>