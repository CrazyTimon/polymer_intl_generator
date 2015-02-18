// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:paper_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
import 'main_app_intl.dart';
import 'package:intl/intl.dart';

/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement with IntlExtract{
  @observable String reversed = '';
  @observable String test = '';
  String test1(arg){
    return "|$arg|";
  }

  onTest1Click(_){
    Intl.defaultLocale = 'SecondMsg';
    test = SecondMsg();
  }

  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created(){
//        updateLocale('fr');
//          Intl.defaultLocale = 'SecondMsg';
          test = SecondMsg();
  }

  void reverseText(Event event, Object object, PaperInput target) {
    reversed = target.value.split('').reversed.join('');
  }

  // Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of main-app is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of main-app is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// main-app is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanges(name, oldValue, newValue);
//  }

//  /// Called when main-app has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//    super.ready();
//  }
  SecondMsg() => Intl.message(
         "i'm fine thanks and you",
         name: "SecondMsg",
         desc: "SecondMsg answer",
         args: [],
         examples: {"arg1":"test1","arg2":"test3"});
}
