import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  static const String routeName = '/new-event';
  @override
  _NewEventScreenState createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('New event awaits implementations '),
    );
  }
}
