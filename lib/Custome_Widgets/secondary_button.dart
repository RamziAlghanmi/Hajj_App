import 'package:flutter/material.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';

class SecondaryButton extends StatelessWidget {
  final int number;
  final String title;
  final String subtitle;
   final VoidCallback onTap;

  const SecondaryButton({
    super.key,
    required this.number,
    required this.title,
    required this.subtitle, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(12),
      
        padding: EdgeInsets.all(15),
      
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black26)],
        ),
      
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 40,
      
                backgroundColor: AppColors.primary,
                child: Text(
                  number.toString(),
                  style: AppTheme.lightTheme.textTheme.titleLarge,
                ),
              ),
            ),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTheme.lightTheme.textTheme.bodyLarge),
      
                  Text(subtitle, style: AppTheme.lightTheme.textTheme.bodyMedium),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}
