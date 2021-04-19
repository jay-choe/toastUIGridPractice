<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
    <script src="https://code.jquery.com/git/jquery-git.js"></script>
    <script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>
    <title>Title</title>
</head>
<script>
    $(document).ready(() => getData());

    let grid;

    function getData(){
        $.ajax({
            url : "/data",
            method: "GET",
            dataType: "JSON",
            success: function(result){
                handleData(result);
                grid.resetData(result);
                //grid.resetData(Object.values(result));
            },
            error: ((m) => console.log(m))
        })
    }

    function handleData(data) {

         grid = new tui.Grid({
            el: document.getElementById('grid'),
            scrollX: false,
            scrollY: false,
            columns: [
                {
                    header: 'Sequence',
                    name: 'sequence'
                },
                {
                    header: 'Writer',
                    name : 'writer'
                },
                {
                    header: 'Title',
                    name : 'title'
                },
                {
                    header: 'CreatedAt',
                    name : 'createdAt'
                }
            ]
        });
    }
</script>
<body>

<div id="grid"></div>

</body>
</html>