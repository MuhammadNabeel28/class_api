import 'package:flutter/material.dart';
import 'package:hanbhaee/ui/counter/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: ViewModelBuilder<CounterViewModel>.reactive(
          viewModelBuilder: () => CounterViewModel(),
          builder: (context, viewModel, child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Counter Value ${viewModel.counter}"),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addCounter();
                      },
                      child: Text("Add Counter")),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToHome();
                      },
                      child: Text("Navigate To Home")),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToPosts();
                      },
                      child: Text("Navigate To Posts")),
                ],
              ),
            );
          }),
    );
  }
}
