import 'dart:async';

void main(List<String> arguments) {
  Timer.periodic(Duration(seconds: 1), (timer) {
    print(DateTime.now().toLocal().toString().substring(11, 19));
  });
}
