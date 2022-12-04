import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BatteryLevelDetails(),
    );
  }
}

class BatteryLevelDetails extends StatefulWidget {
  @override
  State<BatteryLevelDetails> createState() => _BatteryLevelDetailsState();
}

class _BatteryLevelDetailsState extends State<BatteryLevelDetails> {
  int? _batteryLevel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAndFetchBatteryLevel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Battery Level')),
      body:  Center(
        child: Text('Battery Level : $_batteryLevel'),
      ),
    );
  }

  Future<void> getAndFetchBatteryLevel() async {
    const MethodChannel _platform =
        MethodChannel('com.flutter.battery_level_task');
    try {
      final int batteryLevel =
          await _platform.invokeMethod('getAndFetchBatteryLevel');

      setState(() {
        _batteryLevel = batteryLevel;
      });
    } on PlatformException catch (err) {
      setState(() {
        _batteryLevel = null;
      });
      debugPrint('Something Went Wrong!');
    }
  }
}
