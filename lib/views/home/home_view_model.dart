import 'package:csgorivals/core/base/base_view.dart';

class HomeViewModel extends BaseViewModel{
  int _counter;
  HomeViewModel({int counter = 0}) : this._counter = counter;
  
  int get counter => this._counter;
  set counter(int value){
    this._counter = value;
    notifyListeners();
  }

  increment(){
    counter = counter+1;
  }

  Future<void> init() async {
    this.busy = true;
    await Future.delayed(Duration(minutes: 1));
    this.busy = false;

  }
}