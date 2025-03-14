import 'package:flutter/material.dart';
import 'package:old_portfolio/utils/constants.dart';
import 'package:old_portfolio/widgets/knowledge_text.dart';

// TODO: Always update data.

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Flutter Web, Responsive UI"),
        KnowledgeText(text: "Rest API, Dio, Retrofit"),
        KnowledgeText(text: "Cubit, Bloc"),
        KnowledgeText(text: "Firebase, Hive"),
        KnowledgeText(text: "Git, GitHub, Postman"),
        KnowledgeText(text: "Figma, Adobe XD"),
      ],
    );
  }
}
