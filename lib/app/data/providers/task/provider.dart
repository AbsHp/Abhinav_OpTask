import 'dart:convert';

import 'package:get/get.dart';
import 'package:to_do_list/app/core/utils/keys.dart';
import 'package:to_do_list/app/data/services/storage/services.dart';

import '../../models/task.dart';

class TaskProvider{
   final _storage = Get.find<StorageService>();

//   {
//     'tasks':[
//   {
//     'title':'Work',
//     'color':'#ff123456'
//     'icon':0xe123
//   }
//     ]
// }


  List<Task> readTask(){

    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString()).forEach((e)=>tasks.add(Task.fromJson(e)));
    return tasks;

  }

  void writeTask(List<Task> tasks){
    _storage.write(taskKey, jsonEncode(tasks));
  }
}