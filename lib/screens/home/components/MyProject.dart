import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Projects.dart';
import 'ProjectCard.dart';
class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding,),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demo_projects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            // crossAxisSpacing: defaultPadding,
            // mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => ProjectCard(
              project: demo_projects[index],
            ),
        ),
      ],
    );
  }
}
