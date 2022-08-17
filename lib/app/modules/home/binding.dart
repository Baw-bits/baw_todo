import 'package:baw_todo/app/data/models/providers/tasks/provider.dart';
import 'package:baw_todo/app/data/services/storage/repository.dart';
import 'package:baw_todo/app/modules/home/controller.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider()),
      ),
    );
  }
}
