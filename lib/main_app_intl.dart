import 'package:intl/intl.dart';
class IntlExtract{
      libmain_apphtml1 (arg1, arg2) => Intl.message(
        "hi, how are you $arg1?",
        name: "libmain_apphtml1",
        desc: "FirstMsg",
        args: [arg1, arg2],
        examples: {"arg1":"test1","arg2":"test3"});


}
