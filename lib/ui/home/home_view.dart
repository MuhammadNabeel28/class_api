import 'package:flutter/material.dart';
import 'package:hanbhaee/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ViewModelBuilder<HomeViewModel>.reactive(
          viewModelBuilder: () => HomeViewModel(),
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
                      onPressed: () {}, child: Text("Navigate To Home")),
                ],
              ),
            );
          }),
    );
  }
}
