import 'dart:html' as html;

class Service{


void search({required String query}){
   html.window.open('https://www.google.com/search?q=$query&sxsrf=ALiCzsbigZA8pClBbxFAkRrkli9IS-yI_Q%3A1667582216268&source=hp&ei=CEllY6TcDJqJxc8Pve632AY&iflsig=AJiK0e8AAAAAY2VXGMmtUjG2AoEZRUiC84P8xTRKwyqS&ved=0ahUKEwikgIbtg5X7AhWaRPEDHT33DWsQ4dUDCAg&uact=5&oq=as&gs_lp=Egdnd3Mtd2l6uAED-AEBMgQQIxgnMgQQABhDMgcQLhjUAhhDMgQQABhDMgoQABixAxiDARhDMgoQLhjHARjRAxhDMgQQABhDMgQQABhDMgsQABiABBixAxiDATIIEAAYgAQYsQPCAhMQLhixAxiDARjHARjRAxjUAhhDwgILEC4YgAQYsQMYgwHCAgsQLhiABBjHARjRA8ICBRAAGIAESO4BUABYQHAAeADIAQCQAQCYAZUBoAGfAqoBAzAuMg&sclient=gws-wiz',"_blank");
}




void openNewTap({required String query}){
   html.window.open(query,"_blank");
}



}