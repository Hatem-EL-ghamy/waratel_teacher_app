import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';

class RecentCallsList extends StatelessWidget {
  const RecentCallsList({super.key});

  @override
  Widget build(BuildContext context) {
    // Demo data
    final List<Map<String, String>> users = [
      {'name': 'مشعل محمد', 'initial': 'م'},
      {'name': 'مشعل محمد', 'initial': 'م'},
      {'name': 'Abdulka reem', 'initial': ''}, // Use icon user
      {'name': 'Alili ahmmad', 'initial': ''},
      {'name': 'Sultan Alo thaimeen', 'initial': ''},
      {'name': 'عبد المجيد', 'initial': ''},
    ];

    return SizedBox(
      height: 120.h, // Height for avatar + text
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        separatorBuilder: (ctx, i) => SizedBox(width: 15.w),
        itemBuilder: (context, index) {
          final user = users[index];
          return Column(
            children: [
              Container(
                width: 65.w,
                height: 65.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsManager.secondaryColor, width: 2.w),
                  color: Colors.grey.shade200
                ),
                child: Center(
                  child: user['initial']!.isNotEmpty
                      ? Text(user['initial']!, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.grey))
                      : Icon(Icons.person, size: 40.sp, color: Colors.grey),
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: 70.w,
                child: Text(
                  user['name']!,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12.sp, color: ColorsManager.textPrimaryColor),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
