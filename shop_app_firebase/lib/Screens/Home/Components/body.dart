import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text("Silver appbar tutorial"),
          centerTitle: true,
          expandedHeight: 200,
          backgroundColor: Colors.red,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Text("Data");
            },
            childCount: 4,
          ),
        )
        // SliverFillRemaining(
        //   child: Center(
        //     child: Text(
        //       "Hello word",
        //     ),
        //   ),
        // )
      ],
    );
  }
}
