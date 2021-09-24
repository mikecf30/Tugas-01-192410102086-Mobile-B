import 'package:flutter/widgets.dart';
import 'package:tugas/Sort.dart';
import 'Sort.dart';
import 'My_Contact.dart';

var dataDummy = [
  ["Mike", "Mike@email.com", "083xxxxxxxxx"],
  ["Ferdinandus", "Ferdinandus@email.com", "081xxxxxxxxx"],
  ["Naufal", "Naufal@email.com", "082xxxxxxxxx"],
  ["Resta", "Resta@email.com", "082xxxxxxxxx"],
  ["Domas", "Domas@email.com", "081xxxxxxxxx"],
  ["Tahta", "Tahta@email.com", "082xxxxxxxxx"],
  ["Ahmada", "Ahmada@email.com", "083xxxxxxxx"],
  ["Rico", "Rico@email.com", "082xxxxxxxxx"],
  ["Arnanda", "Arnanda@email.com", "081xxxxxxxx"],
  ["Yudhistira", "Yudhistira@email.com", "082xxxxxxxxx"],
  [
    "Alexander Graham Bell veranuss titanuss",
    "offside@email.com",
    "34634735853834624623235"
  ]
];

void main(){

  dataDummy = mergeSort(dataDummy);


  var list = [];
  for(int i=0; i<dataDummy.length; i++){
    list.add(Item(dataDummy[i][0],dataDummy[i][2],dataDummy[i][1], false, true) );
  }

  runApp(Mycontact(list));
  }

