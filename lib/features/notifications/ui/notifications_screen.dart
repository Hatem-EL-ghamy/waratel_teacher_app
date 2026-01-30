import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waratel_app/core/theming/colors.dart';
import '../../../../core/widgets/custom_page_header.dart';
import '../../../../core/widgets/info_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: CustomPageHeader(
        title: 'التنبيهات',
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: 4,
            separatorBuilder: (c, i) => SizedBox(height: 16.h),
            itemBuilder: (context, index) {
              return InfoCard(
                backgroundColor: Colors.grey.shade100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.h, left: 8.w),
                      child: Container(
                        width: 20.w,
                        height: 20.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4.r)
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('تنبيه', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'حاليا هناك عدد كبير من الطلاب، نأمل منك التواجد بالتطبيق وتفعيل الاتصال',
                             style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade700),
                          ),
                          SizedBox(height: 8.h),
                           Text(
                            index == 0 ? 'اليوم 05:35 ص' : '05:35 ص 27/01/2026',
                             style: TextStyle(fontSize: 11.sp, color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
