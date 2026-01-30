import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waratel_app/core/theming/colors.dart';

class DashboardStatsCard extends StatefulWidget {
  const DashboardStatsCard({super.key});

  @override
  State<DashboardStatsCard> createState() => _DashboardStatsCardState();
}

class _DashboardStatsCardState extends State<DashboardStatsCard> {
  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Rating Bar & Toggle
        Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.r,
                  offset: Offset(0, 2.h),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
                 children: [
                   Text(isAvailable ? 'متاح' : 'غير متاح',
                       style: TextStyle(color: isAvailable ? ColorsManager.primaryColor : Colors.grey, fontSize: 12.sp, fontWeight: FontWeight.bold)),
                   Switch(
                       value: isAvailable,
                       activeColor: ColorsManager.primaryColor,
                       onChanged: (val) {
                         setState(() {
                           isAvailable = val;
                         });
                       }),
                 ],
               ),
              Text('متوسط تقييماتك',
                  style: TextStyle(color: Colors.grey, fontSize: 13.sp)),
               Row(
                children: [
                  Icon(Icons.star, color: ColorsManager.accentColor, size: 18.sp),
                  Icon(Icons.star, color: ColorsManager.accentColor, size: 18.sp),
                  Icon(Icons.star, color: ColorsManager.accentColor, size: 18.sp),
                  Icon(Icons.star, color: ColorsManager.accentColor, size: 18.sp),
                  Icon(Icons.star_half,
                      color: ColorsManager.accentColor, size: 18.sp),
                  SizedBox(width: 8.w),
                  Text('4.378', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            // Balance Card (Right in RTL)
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.w),
                height: 170.h, // Increased height to prevent overflow
                decoration: BoxDecoration(
                    color: ColorsManager.primaryColor,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4.r,
                        offset: Offset(0, 2.h),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('رصيد اليوم',
                            style: TextStyle(color: Colors.white, fontSize: 13.sp)),
                        SizedBox(width: 5.w),
                        Icon(Icons.account_balance_wallet,
                            color: Colors.white, size: 16.sp),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '0 دولار امريكي',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text('مقابل',
                            style: TextStyle(
                                color: ColorsManager.accentColor, fontSize: 11.sp)),
                        SizedBox(width: 5.w),
                        Text('00:00:00',
                            style:
                            TextStyle(color: Colors.white, fontSize: 11.sp)),
                      ],
                    )
                  ],
                ),
              ),
            ),
             SizedBox(width: 16.w),
            // Performance Indicator
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.w),
                height: 170.h, // Increased height
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4.r,
                        offset: Offset(0, 2.h),
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('مؤشر قياس الاداء', style: TextStyle(fontSize: 12.sp)),
                        SizedBox(width: 5.w),
                        Icon(Icons.speed, size: 16.sp)
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 75.h, // Adjusted height
                          width: 75.h,
                          child: CircularProgressIndicator(
                            value: 0.1,
                            strokeWidth: 8.w,
                            backgroundColor: Colors.grey.shade200,
                            color: ColorsManager.primaryColor,
                          ),
                        ),
                        Column(
                          children: [
                            Text('0 %',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                            Text('0 ساعة من 20',
                                style: TextStyle(
                                    fontSize: 9.sp, color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Text('أداء الأسبوع الماضي',
                        style: TextStyle(fontSize: 11.sp, color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
