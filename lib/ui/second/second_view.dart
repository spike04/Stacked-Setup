import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'second_viewmodel.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondViewModel>.reactive(
      viewModelBuilder: () => SecondViewModel(),
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: model.doSomething,
        ),
        body: Center(
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
