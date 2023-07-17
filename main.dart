import 'package:flutter/material.dart';
import 'event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Event> events = [
    Event(
      title: 'Event 1',
      description: 'Description of Event 1',
      date: DateTime.now(),
    ),
    Event(
      title: 'Event 2',
      description: 'Description of Event 2',
      date: DateTime.now(),
    ),
    Event(
      title: 'Event 3',
      description: 'Description of Event 3',
      date: DateTime.now(),
    ),
    Event(
      title: 'Event 4',
      description: 'Description of Event 4',
      date: DateTime.now(),
    ),
    Event(
      title: 'Event 5',
      description: 'Description of Event 5',
      date: DateTime.now(),
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Events'),
          centerTitle: true,
          backgroundColor: Colors.indigo[900],
        ),
        body: ListView.builder(
          itemCount: events.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    events[index].title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    events[index].description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 5.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Date: ${events[index].date.toString()}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
