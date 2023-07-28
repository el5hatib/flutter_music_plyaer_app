import 'package:flutter/material.dart';
import 'package:music_player/consts/app_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      appBar: AppBar(
          leading: const Icon(Icons.sort_rounded, color: AppColors.whiteColor,),
          title: const Text('The Voice'),
          actions: [
          IconButton(
          onPressed: () {},
      icon: const Icon(Icons.search_rounded, color: AppColors.whiteColor,),
    ),
    ],
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics() ,
          itemCount: 100,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 5),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: AppColors.bgColor,
                leading: const Icon(Icons.music_note_rounded, color: AppColors.whiteColor,size: 35,),
                title: Text('Song $index', style: Theme.of(context).textTheme.titleSmall),
                subtitle: Text('Artist $index',style: Theme.of(context).textTheme.bodyMedium),
                trailing: const Icon(Icons.play_arrow_rounded, color: AppColors.whiteColor,size: 30,),
              ),
            );
          },

      ),
    )
    );
  }
}
