import 'package:flutter/material.dart';
import 'package:hanbhaee/ui/posts/post_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PostViewModel(),
      onViewModelReady: (viewModel) => viewModel.getUnicorns(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: ListView.builder(
              itemCount: viewModel.unicorn.length,
              itemBuilder: (context, index) {
                final unicorn = viewModel.unicorn[index];
                if (viewModel.isBusy) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (viewModel.post.isEmpty) {
                  const Text("No Posts");
                }
                return ListTile(
                  title: Text(unicorn.name!),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          viewModel.addUnicorns();
                        },
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                );
              }),
          floatingActionButton: IconButton(
            onPressed: () {
              viewModel.addUnicorns();
            },
            icon: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
