// 设置内容
//提交表单

//markdown
function mdConverter() {
    var md = document.getElementById("md-area").value;
    var converter = new showdown.Converter();  //增加拓展table
    converter.setOption('tables', true);  //启用表格选项。从showdown 1.2.0版开始，表支持已作为可选功能移入核心拓展，showdown.table.min.js扩展已被弃用
    var view = converter.makeHtml(md);
    document.getElementById("view-area").innerHTML = view;
}

//富文本
var E = window.wangEditor;
var editor = new E('#editor');
editor.create();
//配置图片上传
/*
editor.customConfig.uploadImgServer = '/admin.php/Upload/wang_editor';  // 上传图片到服务器
// 3M
editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
// 限制一次最多上传 5 张图片
editor.customConfig.uploadImgMaxLength = 1;
// 自定义文件名
editor.customConfig.uploadFileName = 'editor_img';
// 将 timeout 时间改为 3s
editor.customConfig.uploadImgTimeout = 5000;

editor.customConfig.uploadImgHooks = {
    before: function (xhr, editor, files) {
        // 图片上传之前触发
        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，files 是选择的图片文件

        // 如果返回的结果是 {prevent: true, msg: 'xxxx'} 则表示用户放弃上传
        // return {
        //     prevent: true,
        //     msg: '放弃上传'
        // }
        // alert("前奏");
    },
    success: function (xhr, editor, result) {
        // 图片上传并返回结果，图片插入成功之后触发
        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
        // var url = result.data.url;
        // alert(JSON.stringify(url));
        // editor.txt.append(url);
        // alert("成功");
    },
    fail: function (xhr, editor, result) {
        // 图片上传并返回结果，但图片插入错误时触发
        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
        alert("失败");
    },
    error: function (xhr, editor) {
        // 图片上传出错时触发
        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
        // alert("错误");
    },
    // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
    // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
    customInsert: function (insertImg, result, editor) {
        // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
        // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
        // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
        var url = result.data[0];
        insertImg(url);
        // result 必须是一个 JSON 格式字符串！！！否则报错
    }
}*/
function post() {
    // 获取内容
    if(document.getElementById("games").value=="-1"){
        document.getElementById("tip1").innerText="请选择所属游戏";
        return false;
    }
    if(document.getElementById("head").value==""){
        document.getElementById("tip").innerText="标题不能为空";
        return false;
    }
    var content = editor.txt.html();
    var temp = document.createElement("form");
    temp.action = "SaveUpdate";//post的目标
    temp.method = "post";
    temp.style.display = "none";
    var opt = document.createElement("textarea");
    opt.name = "content";
    opt.value = content;
    temp.appendChild(opt);
    var opt1 = document.createElement("textarea");
    opt1.name="uid";
    opt1.value=document.getElementById("uid").value;
    temp.appendChild(opt1);
    var opt2 = document.createElement("textarea");
    opt2.name="gameid";
    opt2.value=$('#games option:selected') .val();
    temp.appendChild(opt2);
    var opt3 = document.createElement("textarea");
    opt3.name="title";
    opt3.value=document.getElementById("head").value;
    temp.appendChild(opt3);
    var opt4 = document.createElement("textarea");
    opt4.name="pid";
    opt4.value=document.getElementById("pidt").innerText;
    temp.appendChild(opt4);
    document.body.appendChild(temp);
    temp.submit();
    return temp;
}

