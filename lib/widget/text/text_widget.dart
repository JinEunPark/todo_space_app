import 'package:flutter/cupertino.dart';

import '../../design/first_theme.dart';

class NormalTextWidget extends StatefulWidget {
  const NormalTextWidget({super.key, required this.content});

  final String content;

  @override
  State<NormalTextWidget> createState() => _NormalTextWidgetState();
}

class _NormalTextWidgetState extends State<NormalTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.content,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.poetryClientGrey[900],
      ),
    );
  }
}
