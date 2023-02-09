

import 'package:flutter/material.dart';

class EmptyBottom extends StatelessWidget with PreferredSizeWidget {
  const EmptyBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
  
  @override
  Size get preferredSize => Size.zero;
}