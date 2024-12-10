import 'package:flutter/material.dart';
import 'package:foodie/utils/extensions/context_ext.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key,
      this.bottomHeight,
      this.bottomItem,
      this.actions,
      this.leading,
      this.useLeading,
      this.title});

  final double? bottomHeight;
  final Widget? bottomItem;
  final List<Widget>? actions;
  final Widget? leading;
  final bool? useLeading;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return AppBar(
      automaticallyImplyLeading: false,
      actions: actions,
      title: title,
      leadingWidth: 65,
      leading: (useLeading ?? false)
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "Back",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            )
          : (leading != null)
              ? leading
              : null,
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: bottomItem ?? const SizedBox(),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottomHeight ?? 0));
}
