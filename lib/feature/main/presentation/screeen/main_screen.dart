import 'package:finance_app/feature/main/presentation/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int foodTotalCost = 0;
  int travelTotalCost = 0;
  int transportTotalCost = 0;
  int jymTotalCost = 0;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.5;
    final width = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CategoryWidget(
                    width: width,
                    height: height,
                    name: 'food',
                    backgoundColor: Colors.green,
                    cost: foodTotalCost,
                    onAccept: (data) {
                      setState(() {
                      foodTotalCost+=data;
                        
                      });
                    },
                  ),
                  CategoryWidget(
                    width: width,
                    height: height,
                    name: 'transport',
                    backgoundColor: Colors.blue,
                    cost: transportTotalCost,
                    onAccept: (data) {
                      setState(() {
                      transportTotalCost+=data;
                        
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CategoryWidget(
                    width: width,
                    height: height,
                    name: 'jym',
                    backgoundColor: Colors.red,
                    cost: jymTotalCost,
                    onAccept: ( data) {
                      setState(() {
                        jymTotalCost += data;
                      });
                    },
                  ),
                  CategoryWidget(
                    width: width,
                    height: height,
                    name: 'travel',
                    backgoundColor: Colors.yellow,
                    cost: transportTotalCost,
                    onAccept: (data) {
                      setState(() {
                        transportTotalCost+=data;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          const Center(
            child: Draggable<int>(
              data: 500,
              feedback: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: Text('500'),
              ),
              childWhenDragging: CircleAvatar(
                radius: 64,
                child: Text(''),
              ),
              child: CircleAvatar(
                radius: 64,
                child: Text('500'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

