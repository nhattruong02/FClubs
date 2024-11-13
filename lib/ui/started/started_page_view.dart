import 'package:fclubs/ui/started/started_child_page.dart';
import 'package:flutter/material.dart';

class StartedPageView extends StatefulWidget {
  const StartedPageView({super.key});

  @override
  State<StartedPageView> createState() => _StartedPageViewState();
}

class _StartedPageViewState extends State<StartedPageView> {
  @override
  Widget build(BuildContext context) {
    return const StatedChildPage();
  }
}
