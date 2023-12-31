@JS()
library data_layer_event.base;

import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('dataLayer.push')
external void _push(data);

void push(Map<String, dynamic> data) {
  _push(jsify(data));
}
void pushEvent(String event, {Map<String, dynamic> data = const {}}) {
  data = {
    ...data,
    'event': event,
  };
  push(data);
}