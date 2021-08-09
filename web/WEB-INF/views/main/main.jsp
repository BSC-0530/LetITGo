<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/personalMainHeader.jsp"/>

    <jsp:include page="mainPage.jsp"/>

    <jsp:include page="../common/footer.jsp"/>
    
    <!-- 관리자 게시물 관리 테이블 -->
    <table id="table_id" class="display">
    <thead>
        <tr>
            <th>Column 1</th>
            <th>Column 2</th>
            <th>Column 3</th>
            <th>Column 4</th>
            <th>Column 5</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td align="center">Row 1 Data 1</td>
            <td align="center">Row 1 Data 2</td>
            <td align="center">Row 1 Data 3</td>
            <td align="center">Row 1 Data 4</td>
            <td align="center">Row 1 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 2 Data 1</td>
            <td align="center">Row 2 Data 2</td>
            <td align="center">Row 2 Data 3</td>
            <td align="center">Row 2 Data 4</td>
            <td align="center">Row 2 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 3 Data 1</td>
            <td align="center">Row 3 Data 2</td>
            <td align="center">Row 3 Data 3</td>
            <td align="center">Row 3 Data 4</td>
            <td align="center">Row 3 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 4 Data 1</td>
            <td align="center">Row 4 Data 2</td>
            <td align="center">Row 4 Data 3</td>
            <td align="center">Row 4 Data 4</td>
            <td align="center">Row 4 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 5 Data 1</td>
            <td align="center">Row 5 Data 2</td>
            <td align="center">Row 5 Data 3</td>
            <td align="center">Row 5 Data 4</td>
            <td align="center">Row 5 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 6 Data 1</td>
            <td align="center">Row 6 Data 2</td>
            <td align="center">Row 6 Data 3</td>
            <td align="center">Row 6 Data 4</td>
            <td align="center">Row 6 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 7 Data 1</td>
            <td align="center">Row 7 Data 2</td>
            <td align="center">Row 7 Data 3</td>
            <td align="center">Row 7 Data 4</td>
            <td align="center">Row 7 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 8 Data 1</td>
            <td align="center">Row 8 Data 2</td>
            <td align="center">Row 8 Data 3</td>
            <td align="center">Row 8 Data 4</td>
            <td align="center">Row 8 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 9 Data 1</td>
            <td align="center">Row 9 Data 2</td>
            <td align="center">Row 9 Data 3</td>
            <td align="center">Row 9 Data 4</td>
            <td align="center">Row 9 Data 5</td>
        </tr>
        <tr>
            <td align="center">Row 10 Data 1</td>
            <td align="center">Row 10 Data 2</td>
            <td align="center">Row 10 Data 3</td>
            <td align="center">Row 10 Data 4</td>
            <td align="center">Row 10 Data 5</td>
        </tr>
    </tbody>
</table>

<script>

	$(document).ready( function () {
	    $('#table_id').DataTable();
	} );

</script>
	
</body>
</html>