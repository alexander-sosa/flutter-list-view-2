import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> title = ['Mercedes Benz', 'Volkswagen', 'Toyota', 'Suzuki', 'Isuzu', 'Ford', 'Ferrari', 'Mitsubishi', 'Renault', 'Nissan'];
  List<String> subtitle = ['Description of Mercedes Benz', 'Description of Volkswagen', 'Description of Toyota', 'Description of Suzuki', 'Description of Isuzu', 'Description of Ford', 'Description of Ferrari', 'Description of Mitsubishi', 'Description of Renault', 'Description of Nissan'];
  List<Icon> leading = [Icon(Icons.ac_unit), Icon(Icons.access_alarms), Icon(Icons.accessibility_rounded), Icon(Icons.play_arrow), Icon(Icons.account_box), Icon(Icons.add_a_photo_rounded), Icon(Icons.add_alert), Icon(Icons.add_moderator), Icon(Icons.add_location_rounded), Icon(Icons.workspaces_filled)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View 2'),),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Card(
                color: Colors.lightGreenAccent,
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(child: leading[index]),
                  title: Text(title[index]),
                  subtitle: Text(subtitle[index]),
                  trailing: leading[index],
                  onTap: (){
                    setState(() {
                      print('chosen item: ${title[index]}');
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('chosen item: ${title[index]}')));
                  },
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, index) => SizedBox(height: 20,),
          itemCount: title.length
      ),
    );
  }
}
