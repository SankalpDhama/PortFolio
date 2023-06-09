import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Projects.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Spacer(),
            Text(
              project.description!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
            Spacer(),
            TextButton(onPressed: (){}, child: Text("Read More >>",style: TextStyle(color: primaryColor),),),
          ],
        ),
      ),
    );
  }
}
