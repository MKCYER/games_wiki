window.onload=bb;
function bb()
{
    var ac=document.getElementById("test");
    ac.value=$.cookie("account");
}
function aa()
{
    var ac1=document.getElementById("test");
    var ac = document.getElementById("account");
    var pa=document.getElementById("passwd");
    $.cookie('account',ac.value);
    $.cookie('passwd',pa.value);


}