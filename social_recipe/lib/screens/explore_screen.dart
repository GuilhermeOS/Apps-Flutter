import 'package:flutter/material.dart';
import 'package:social_recipe/components/friend_post_list_view.dart';
import 'package:social_recipe/components/today_recipe_list_view.dart';

import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // FutureBuilder é util aqui, pois ajuda vc a determinar o estado de um futuro
        // Por exemplo, ele informa se os dados ainda estão carregando ou se ja foram carregados
        future: mockService.getExploreData(), //Parametro
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          // Add Nested List Views
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
                const SizedBox(height: 16),
                FriendPostListView(
                    friendPosts: snapshot.data?.friendPosts ?? []),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
