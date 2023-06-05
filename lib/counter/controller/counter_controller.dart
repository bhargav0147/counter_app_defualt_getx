import 'package:get/get.dart';

class CounterController extends GetxController
{
  int i=0;

  void clear()
  {
    i=0;
    update();
  }
  void plus()
  {
    i++;
    update();
  }
  void minus()
  {
    i--;
    update();
  }
  void two()
  {
    i=i*2;
    update();
  }
  void four()
  {
    i=i*4;
    update();
  }
}