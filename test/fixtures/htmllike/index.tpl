<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

<script>
    require(['./module']);
</script>
<script>require(['./module']);</script>
<script type="text/javascript">require(['./module']);</script>
<script type="application/javascript">require(['./module']);</script>
<script type="text/template">require(['./module']);/*这个module不应该被替换，因为标记了为模板内容*/</script>
<script >require(['./module']);</script>
<script >>require(['./module']);/*这个module不应该被替换,因为会报语法错误。*/</script>
<script
    type="text/javascript"
    id="xxx">
    require(['./module']);
</script>

{%script%}require(['./module']);{%/script%}
{%script id="xxx"%}require(['./module']);{%/script%}
{%script type="text/javascript"%}require(['./module']);{%/script%}
{%script id="xxx"
    name="xxx"%}require(['./module']);{%/script%}

</body>
</html>
<script>require(['./module']);