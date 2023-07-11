import 'package:flutter/material.dart';


class thepage extends StatefulWidget {
   const thepage({super.key});
   

  @override
  State<thepage> createState() => _thepageState();
}

class _thepageState extends State<thepage> {
 double val=0;
 
  TextEditingController control= TextEditingController();
   void getVal(){
    setState(() {
      double x= double.parse(control.text);
      val =x*82.61;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
        body:Center(child:
        Column(mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children:  [
          Container(child: Image.network('https://icons-for-free.com/iconfiles/png/512/conversion+currency+dollar+money+rupee+to+icon-1320165533263573384.png',height: 100,),padding: EdgeInsets.only(bottom: 50),),
      
          Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Text('₹ $val',style:const TextStyle(fontSize: 48,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Container(
            //padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: control,
              
              autocorrect: true,
                   style: const TextStyle(color: Colors.amber,fontSize: 28),
          
                   decoration: const InputDecoration(
            hintText: 'Convert From USD to INR'
            ,
            hintStyle: TextStyle(color:Colors.black26,fontSize: 18),
            prefixIcon: Icon(Icons.monetization_on_sharp,color: Colors.amber,),
            fillColor: Colors.white,
            filled: true,
              // border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide:BorderSide(color:Colors.indigoAccent,width: 10,strokeAlign: 5)),
               
               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),borderSide: BorderSide(color:Colors.black45,width:5.0)),
                   // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20),)
            focusedBorder:OutlineInputBorder(borderSide: BorderSide(color:Colors.greenAccent,width:5),borderRadius: BorderRadius.all(Radius.circular(20))
                   ),
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal:true),
            ),
          ),
          ElevatedButton.icon(onPressed:getVal , label: const Text('Convert'),icon:const Icon(Icons.equalizer_sharp))
        ],
      )
      )
        
      );
  }
}
