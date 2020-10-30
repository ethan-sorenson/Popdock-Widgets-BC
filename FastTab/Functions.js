function CreateUrl(param1)
{
    var __div1 = document.getElementById('controlAddIn');
    var __iframe1 = document.createElement("iframe");
    __iframe1.style.position = "fixed";
    __iframe1.style.width = "96%";
    __iframe1.style.height = "600px";
    __iframe1.style.margin = "0";
    __iframe1.style.border = "0";
    __iframe1.style.padding = "0";
    __iframe1.style.top = "0";
    __iframe1.style.left = "0";
    __iframe1.src = param1;
    __div1.appendChild(__iframe1);
}