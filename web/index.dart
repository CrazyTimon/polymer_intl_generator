import 'package:polymer/polymer.dart';
import 'package:polymer_intl_generator/messages_all.dart';
import 'package:intl/intl.dart';

main(){
  initializeMessages("messages_ru").then((_){
      Intl.defaultLocale = "messages_ru";
      initPolymer();
  });
}