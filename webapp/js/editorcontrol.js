$(function() {
    var editor = editormd("test-editor", {
        height:'350px',
        syncScrolling : "single",
        emoji:true,
        //启动本地图片上传功能
        imageUpload: true,
        watch:true,
        imageFormats   : ["jpg", "jpeg", "gif", "png", "bmp", "webp","zip","rar"],
        path   : "./editormd/lib/",
        imageUploadURL : "./upload.php", //文件提交请求路径
        saveHTMLToTextarea : true, //注意3：这个配置，方便post提交表单
        previewTheme : "dark",//预览主题样式 黑色
    });
})