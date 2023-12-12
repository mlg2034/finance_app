import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final String name;
  final Color backgoundColor;
  final double width;
  final double height;
  final int cost;
  final Function(int) onAccept;

  const CategoryWidget({
    super.key,
    required this.width,
    required this.height,
    required this.name,
    required this.backgoundColor,
    required this.cost,
    required this.onAccept,
  });

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return DragTarget<int>(
      builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return Container(
          width: widget.width,
          height: widget.height,
          color: widget.backgoundColor,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.name),
              Text(widget.cost.toString()),
            ],
          ),
        );
      },
      onAccept: (int data) {
        widget.onAccept(data);
      },
    );
  }
}
