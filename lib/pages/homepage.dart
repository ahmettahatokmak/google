import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google/colors.dart';
import 'package:google/path.dart';
import 'package:google/service/service.dart';
import 'package:google/theme.dart';
import 'dart:html' as html;


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController searchController = TextEditingController();
  Service service = Service();
  @override
  Widget build(BuildContext context) {
    Color? textColor = Get.textTheme.bodyMedium?.color;
    var height = MediaQuery.of(context).size.height;
    return RawKeyboardListener(
            focusNode: FocusNode(),
        autofocus: true,
        onKey: (key){
          if(key.isKeyPressed(LogicalKeyboardKey.enter)){
            service.search(query: searchController.text);
          }
        },
      child:  Scaffold(
          appBar: AppBar(
          elevation: 0,
          actions: [
          TextButton(onPressed: ()=>service.openNewTap(query: "https://mail.google.com/mail/?authuser=0&ogbl"), child:  Text("Gmail",style: TextStyle(fontSize: 14,color:textColor,),)),
          
          TextButton(onPressed: ()=>service.openNewTap(query: "https://www.google.com.tr/imghp?hl=tr&authuser=0&ogbl"), child:  Text("Görseller",style: TextStyle(fontSize: 14,color: textColor),)),
          Icon(CupertinoIcons.circle_grid_3x3_fill,color: Get.theme.iconTheme.color,size: 20,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: ()=>service.openNewTap(query: "https://github.com/ahmettahatokmak"),
              child: ClipOval(child: Image.network("https://avatars.githubusercontent.com/u/101813717?v=4",width: 32,height: 32,fit: BoxFit.cover,),)),)],),
    
    
        body: Padding(
         padding: const EdgeInsets.only(top: 10.0,),
        child: Center(
          child: Column(
          children: [
          Image.asset(Get.theme.scaffoldBackgroundColor == kDark ?googleLogoWhite  : googleLogo),
          const SizedBox(height: 20,),
          textfield(),
          const SizedBox(height: 30,),
          buttons(),
          SizedBox(height: height/2-55.5,),
          bottom()
        
        
          ],
          ),
        ),
          ),
      ),
    );}

Widget textfield(){
const Color borderColor = Color(0XFF5f6368);




///icons
Widget icons (){
  return Padding(
    padding: const EdgeInsets.only(right:15.0,top:10.0,bottom:10.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    mainAxisSize: MainAxisSize.min,
    children: [
    const Icon(Icons.keyboard,size: 24,color: Colors.grey,),
    //Image.network("https://www.google.com/tia/tia.png",width: 24,height: 24,),
    const SizedBox(width: 15,),
    SvgPicture.asset(mic,width: 20,height: 20,),
    const SizedBox(width: 15,),
    SvgPicture.asset(camera,width: 24,height: 24,fit: BoxFit.cover,),
        ],),);
}



return  SizedBox(
  width: 582,
  height: 44,
  child:   TextField( 
  controller: searchController,
  cursorWidth: 0.5,
  cursorColor: Get.theme == MyTheme.whiteTheme ? Colors.black : Colors.white,
  cursorHeight: 20,
  style: TextStyle(color:Get.textTheme.bodyMedium?.color,fontWeight: FontWeight.w400),

  decoration: InputDecoration(
  enabledBorder: OutlineInputBorder(borderSide:const  BorderSide(color: borderColor),borderRadius:  BorderRadius.circular(30)),
  focusedBorder: OutlineInputBorder(borderSide:const  BorderSide(color: borderColor),borderRadius:  BorderRadius.circular(30)),
  prefixIcon: IconButton(onPressed: (){
    debugPrint(searchController.text);
    if(searchController.text.isEmpty) null;
    else {service.search(query: searchController.text);}
    
    },icon: const Icon(Icons.search,color: Color(0XFF9aa0a6),size: 20,)),
  suffixIcon: icons()
  ),

  ),);}





Widget button({required Function() onTap, required String text,required double w}){

return ElevatedButton(
  onPressed: onTap,
  style: ElevatedButton.styleFrom(

  side: BorderSide.none,
  maximumSize:  Size(w, 50),
  minimumSize: Size(w, 40),
  elevation: 0
  ),
  child: Text(text,style: TextStyle(fontSize: 14,color: Get.textTheme.bodyMedium?.color),),
  );
}




Widget buttons(){
return    Row(
          mainAxisAlignment: MainAxisAlignment.center,
  children: [
          
          button(onTap: (){}, text: "Google'da Ara",w: 122),
          const SizedBox(width: 15,),
          button(onTap: (){}, text: "Kendimi Şanslı Hissediyorum",w: 236)
          ],);
}








Widget bottom(){
  var width = MediaQuery.of(context).size.width;
  const Color textColor = Color(0XFF9aa0a6);
  const TextStyle textStyle = TextStyle(color: textColor,fontWeight: FontWeight.w400);
  return  Container(
  alignment: Alignment.bottomCenter,
  color: kUltraDark,
  width: width,
  height: 100,
  child: Column(
  children: [
  const Padding(
  padding:  EdgeInsets.all(10.0),
  child:  Align(alignment: Alignment.topLeft,child: Text("Türkiye",style: TextStyle(color: textColor,fontSize: 14))),),
    Container(width: width,height: 1,color: kDark,),
    const SizedBox(height: 15,),
    Padding(
      padding: const EdgeInsets.only(right:20.0,left: 20,bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
      width: 339,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
            children: [
                TextButton(onPressed: ()=>service.openNewTap(query: "https://about.google/?utm_source=google-TR&utm_medium=referral&utm_campaign=hp-footer&fg=1"), child: const Text("Hakkında",style: textStyle)),
                TextButton(onPressed: ()=>service.openNewTap(query: "https://www.google.com/intl/tr_tr/ads/?subid=ww-ww-et-g-awa-a-g_hpafoot1_1!o2&utm_source=google.com&utm_medium=referral&utm_campaign=google_hpafooter&fg=1"), child: const Text("Reklam",style: textStyle)),
                TextButton(onPressed: ()=>service.openNewTap(query: "https://google.com/search/howsearchworks/?fg=1"), child: const Text("İşletme",style: textStyle)),
                TextButton(onPressed: ()=>service.openNewTap(query: "https://google.com/search/howsearchworks/?fg=1"), child: const Text("Arama nasıl çalışır?",style: textStyle)),

                ],),),),


                   SizedBox(
                    width: 340,
                     child: Align(
                     alignment: Alignment.center,
                     child: Row(
     
                     children: [
                     Image.asset(yaprak,width: 12.5,height: 14,),
                     TextButton(onPressed: ()=>service.openNewTap(query: "https://sustainability.google/intl/tr/carbon-free/?utm_source=googlehpfooter&utm_medium=housepromos&utm_campaign=bottom-footer&utm_content="), child: const Text("2007'den bu yana karbon nötr",style: textStyle)),],)),
                   ),    
         
                   
                   Align(
                   alignment: Alignment.topRight,
                   child: Row(
                    mainAxisSize: MainAxisSize.min,
                   children: [
                TextButton(onPressed: ()=>service.openNewTap(query: "https://policies.google.com/privacy?hl=tr&fg=1"), child: const Text("Gizlilik",style: textStyle,)),
                TextButton(onPressed: ()=>service.openNewTap(query: "https://policies.google.com/terms?hl=tr&fg=1"), child: const Text("Şartlar",style: textStyle,)),
                TextButton(onPressed: (){}, child: const Text("Ayarlar",style: textStyle,)),],)),   
        
        ],
      ),
    ),


    ],
    ),);}


void search(){

  
    
}

}