import 'package:get/get.dart';

// Controller - manages variables in shared memory meaning when variable changes the changes then gets reflected on other pages in the app too as it's in the shared memory.

// business logic
class BottomNavController extends GetxController{ // creates a shared memory in the app itself.

  // this is a complex variable (RX int)
  var selectedIndex = 0.obs;
  // selectedIndex : should have diff. value in each diff. time as we click on it i.e. variable should be reactive and to make it reactive we added " .obs " to it.
  // Now, as variable changes the corr. changes are reflected on the UI

  void onItemTapped(int index) {
    print("index $index");
    selectedIndex.value = index; // index is the actual which is assigned to selectedIndex's value.
  }

}