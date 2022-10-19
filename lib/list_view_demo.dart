import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('List View'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.person),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Alghubs',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'launching lib/main.dart in iphone 12 launching lib/main.dart in iphone 12 launching lib/main.dart in iphone 12 launching lib/main.dart in iphone 12 launching lib/main.dart in iphone 12 launching ')
            ],
          ),
        ));
  }
}

class ListViewDemoone extends StatelessWidget {
  const ListViewDemoone({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'dart',
      'swift',
      'c++',
      'c',
      'python',
      'javascript',
      'php',
      'laraval',
      'pega',
      'nodejs',
      'django',
      'swift dzire',
      'django dzire',
      'php dzire',
      'python dzire',
      'angular',
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('List View.Builder'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: ((_, index) {
                return ListTile(
                  title: Text(items[index]),
                  subtitle:
                      Text('Flutter Developer | Close Source Contributer'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    print('Items ${[index]}');
                  },
                );
              })),
        ));
  }
}

class ListViewDemotwo extends StatelessWidget {
  const ListViewDemotwo({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'dart',
      'swift',
      'c++',
      'c',
      'python',
      'javascript',
      'php',
      'laraval',
      'pega',
      'nodejs',
      'django',
      'swift dzire',
      'django dzire',
      'php dzire',
      'python dzire',
      'angular',
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('List View.Seperator'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
              separatorBuilder: (_, __) => Divider(),
              physics: BouncingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: ((_, index) {
                return ListTile(
                  title: Text(items[index]),
                  subtitle:
                      Text('Flutter Developer | Close Source Contributer'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    print('Items ${[index]}');
                  },
                );
              })),
        ));
  }
}

class ListViewDemothree extends StatelessWidget {
  const ListViewDemothree({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'dart',
      'swift',
      'c++',
      'c',
      'python',
      'javascript',
      'php',
      'laraval',
      'pega',
      'nodejs',
      'django',
      'swift dzire',
      'django dzire',
      'php dzire',
      'python dzire',
      'angular',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('List View.Builder Horizonntal'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 20,
                itemBuilder: (_, index) {
                  return Card(
                    elevation: 3,
                    color: Colors.green[100],
                    child: Column(
                      children: [
                        FlutterLogo(
                          size: 125,
                          style: FlutterLogoStyle.stacked,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Title ${index + 1}'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Subtitle ${index + 1}'),
                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
