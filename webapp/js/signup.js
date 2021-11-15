function checkemail() {
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
    var obj = document.getElementById("email");

    if (!reg.test(obj.value)) {
        document.getElementById("tip").innerText="请输入合法的邮箱";
    }else
        document.getElementById("tip").innerText=""
}