import 'package:get/get.dart';
import 'package:to_do_list/app/data/providers/task/provider.dart';
import 'package:to_do_list/app/modules/home/controller.dart';

import '../../data/services/storage/repository.dart';


class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(taskRepository: TaskRepository(
      taskProvider: TaskProvider(),
    )));
  }

  
}