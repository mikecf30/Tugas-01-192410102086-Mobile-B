import 'package:flutter/material.dart';



class Item{
  String nama;
  String nomorhp;
  String email;

  bool isTap;
  bool isShow;


  Item(this.nama,this.nomorhp,this.email,this.isShow,this.isTap);
}


class Mycontact extends StatefulWidget {

  var list;
  Mycontact(this.list);
  // const Mycontact({ Key? key }) : super(key: key);

  @override
  _MycontactState createState() => _MycontactState();
}

class _MycontactState extends State<Mycontact> {
  var item = Item("Nama1","082xxxxxx","nama1@gmail.com",false,true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Mycontact"),
          ],
          ),
        ),

        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            for (int i=0;i<widget.list.length;i++)
            
            InkWell(

              onTap: (){
                setState(() {
                  
                });
                if(widget.list[i].isTap == false){
                  widget.list[i].isTap = true;
                }
                else{
                  widget.list[i].isTap = false;
                }
              },

              child: Card(
                shape:RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blueGrey,width: 3),
                  borderRadius: BorderRadius.circular(10)
                  ),
            
                  child: Column(
                    children: [
            
                      if(widget.list[i].isTap == true)
            
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(40)
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(widget.list[i].nama,style: TextStyle(fontSize: 23),),SizedBox(height: 10,),
                            Text(widget.list[i].nomorhp,style: TextStyle(fontSize: 23),),SizedBox(height: 10,),
                            Text(widget.list[i].email,style: TextStyle(fontSize: 23),),SizedBox(height: 10,)
                          ],
                        ),
                        )
                        
                      else
                      Container(
                        height: 60,
                        padding: EdgeInsets.only(left: 14,right: 14),
                        width: double.infinity,
                        child: Row(
                        children: [CircleAvatar(backgroundColor: Colors.black,),SizedBox(width: 20,),
                        Flexible(fit : FlexFit.tight,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.list[i].nama,
                                style: TextStyle(
                                fontSize: 19
                                ),
                                ),
                              ],
                            ),
                          ),
                        )],
                        ),
                        // color: Colors.blueGrey,
                        )
                        ],
                        ),
                        ),
            ),
            
            
            
            

          ],
        ),
      ),
    );
  }
}