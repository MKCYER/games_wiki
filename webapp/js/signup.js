function checkemail() {
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
    var obj = document.getElementById("email");

    if (!reg.test(obj.value)) {
        document.getElementById("tip").innerText="请输入合法的邮箱";
    }else
        document.getElementById("tip").innerText=""
}
function check(){
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
    var b1=reg.test(document.getElementById("email").value);
    var name=document.getElementById("name");
    var passwd=document.getElementById("passwd");
    var account=document.getElementById("account");
    if(b1&&name.value!=""&&passwd.value!=""&&account.value!=""){
        document.getElementById("tip1").innerText="";
        return true;
    }

    else{
        document.getElementById("tip1").innerText="少了些。。。";
        return false;
    }
}
