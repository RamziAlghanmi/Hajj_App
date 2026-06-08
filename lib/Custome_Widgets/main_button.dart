import 'package:flutter/material.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';

class MainButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MainButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(24),
            splashColor: Colors.white24,
            highlightColor: Colors.transparent,
            onTap: onTap,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(24),

                border: Border.all(color: Colors.white12, width: 1),

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 20,
                    spreadRadius: 0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        color: AppColors.iconBackground,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(icon, size: 50, color: AppColors.primary),
                      ),
                    ),

                    Expanded(
                      child: Text(
                        title,
                        style: AppTheme.lightTheme.textTheme.titleMedium,
                        maxLines: 2,
                        softWrap: true,
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 26,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
