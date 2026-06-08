import 'package:flutter/material.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showNotification;
  final VoidCallback? onNotificationTap;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showNotification = true,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,

      elevation: 0,

      toolbarHeight: 100,

      title: Text(
        title,
        softWrap: true,
        maxLines: 2,
      ),

      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.white, size: 34),
        onPressed: () {
          Navigator.pop(context);
        },
      ),

      actions: [
        if (showNotification)
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: AppColors.white,
              size: 34,
            ),
            onPressed: onNotificationTap,
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
