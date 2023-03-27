import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _donationAmount =
        await secureStorage.getDouble('ff_donationAmount') ?? _donationAmount;
    _donationAmounts = (await secureStorage.getStringList('ff_donationAmounts'))
            ?.map(double.parse)
            .toList() ??
        _donationAmounts;
    _isCustomAmount =
        await secureStorage.getBool('ff_isCustomAmount') ?? _isCustomAmount;
    _isFocusDonationAmount =
        await secureStorage.getBool('ff_isFocusDonationAmount') ??
            _isFocusDonationAmount;
    _selectedDonationButtonIndex =
        await secureStorage.getInt('ff_selectedDonationButtonIndex') ??
            _selectedDonationButtonIndex;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  double _donationAmount = 10.0;
  double get donationAmount => _donationAmount;
  set donationAmount(double _value) {
    _donationAmount = _value;
    secureStorage.setDouble('ff_donationAmount', _value);
  }

  void deleteDonationAmount() {
    secureStorage.delete(key: 'ff_donationAmount');
  }

  List<double> _donationAmounts = [5.0, 10.0, 15.0, 20.0, 50.0, 0.0];
  List<double> get donationAmounts => _donationAmounts;
  set donationAmounts(List<double> _value) {
    _donationAmounts = _value;
    secureStorage.setStringList(
        'ff_donationAmounts', _value.map((x) => x.toString()).toList());
  }

  void deleteDonationAmounts() {
    secureStorage.delete(key: 'ff_donationAmounts');
  }

  void addToDonationAmounts(double _value) {
    _donationAmounts.add(_value);
    secureStorage.setStringList('ff_donationAmounts',
        _donationAmounts.map((x) => x.toString()).toList());
  }

  void removeFromDonationAmounts(double _value) {
    _donationAmounts.remove(_value);
    secureStorage.setStringList('ff_donationAmounts',
        _donationAmounts.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromDonationAmounts(int _index) {
    _donationAmounts.removeAt(_index);
    secureStorage.setStringList('ff_donationAmounts',
        _donationAmounts.map((x) => x.toString()).toList());
  }

  bool _isCustomAmount = false;
  bool get isCustomAmount => _isCustomAmount;
  set isCustomAmount(bool _value) {
    _isCustomAmount = _value;
    secureStorage.setBool('ff_isCustomAmount', _value);
  }

  void deleteIsCustomAmount() {
    secureStorage.delete(key: 'ff_isCustomAmount');
  }

  bool _isFocusDonationAmount = false;
  bool get isFocusDonationAmount => _isFocusDonationAmount;
  set isFocusDonationAmount(bool _value) {
    _isFocusDonationAmount = _value;
    secureStorage.setBool('ff_isFocusDonationAmount', _value);
  }

  void deleteIsFocusDonationAmount() {
    secureStorage.delete(key: 'ff_isFocusDonationAmount');
  }

  int _selectedDonationButtonIndex = 1;
  int get selectedDonationButtonIndex => _selectedDonationButtonIndex;
  set selectedDonationButtonIndex(int _value) {
    _selectedDonationButtonIndex = _value;
    secureStorage.setInt('ff_selectedDonationButtonIndex', _value);
  }

  void deleteSelectedDonationButtonIndex() {
    secureStorage.delete(key: 'ff_selectedDonationButtonIndex');
  }

  String _donationCountry = 'Canada';
  String get donationCountry => _donationCountry;
  set donationCountry(String _value) {
    _donationCountry = _value;
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
