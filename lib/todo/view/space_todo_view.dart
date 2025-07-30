import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpaceTodoView extends ConsumerStatefulWidget {
  const SpaceTodoView({super.key});

  @override
  ConsumerState createState() => _SpaceTodoViewState();
}

class _SpaceTodoViewState extends ConsumerState<SpaceTodoView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('space view'),
    );
  }
}
