import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _XAxis = [1, 2, 3, 4, 5, 6];
  List<int> get XAxis => _XAxis;
  set XAxis(List<int> _value) {
    _XAxis = _value;
  }

  void addToXAxis(int _value) {
    _XAxis.add(_value);
  }

  void removeFromXAxis(int _value) {
    _XAxis.remove(_value);
  }

  void removeAtIndexFromXAxis(int _index) {
    _XAxis.removeAt(_index);
  }

  void updateXAxisAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _XAxis[_index] = updateFn(_XAxis[_index]);
  }

  void insertAtIndexInXAxis(int _index, int _value) {
    _XAxis.insert(_index, _value);
  }

  List<int> _YAxis = [1, 6, 8, 2, 4, 1];
  List<int> get YAxis => _YAxis;
  set YAxis(List<int> _value) {
    _YAxis = _value;
  }

  void addToYAxis(int _value) {
    _YAxis.add(_value);
  }

  void removeFromYAxis(int _value) {
    _YAxis.remove(_value);
  }

  void removeAtIndexFromYAxis(int _index) {
    _YAxis.removeAt(_index);
  }

  void updateYAxisAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _YAxis[_index] = updateFn(_YAxis[_index]);
  }

  void insertAtIndexInYAxis(int _index, int _value) {
    _YAxis.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
