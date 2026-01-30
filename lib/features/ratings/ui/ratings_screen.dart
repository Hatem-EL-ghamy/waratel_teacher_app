import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waratel_app/core/theming/colors.dart';
import '../../../../core/widgets/custom_page_header.dart';
import '../../../../core/widgets/info_card.dart';

class RatingsScreen extends StatelessWidget {
  const RatingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: CustomPageHeader(
        title: 'التقييمات',
        child: Container(
          width: double.infinity,
           decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            children: [
               Text(
                'التقييم العام',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.textPrimaryColor,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: ColorsManager.accentColor, size: 24.sp),
                  SizedBox(width: 5.w),
                  Text(
                    '4.37',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.textPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: _buildSummaryCard(title: 'تقييم المقيمين', score: '4.38'),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: _buildSummaryCard(title: 'تقييم الطلاب', score: '4.35'),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                alignment: Alignment.centerRight,
                 child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsManager.primaryColor),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('تصفية', style: TextStyle(color: ColorsManager.primaryColor, fontSize: 14.sp)),
                        SizedBox(width: 5.w),
                        Icon(Icons.filter_alt_outlined, color: ColorsManager.primaryColor, size: 18.sp),
                      ],
                    ),
                ),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text('تقارير المقيمين', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.separated(
                  itemCount: 2,
                   separatorBuilder: (c,i) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    return InfoCard(
                      backgroundColor: Colors.grey.shade50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Row(
                                 children: [
                                   Icon(Icons.person_outline, size: 20.sp, color: ColorsManager.primaryColor),
                                   SizedBox(width: 5.w),
                                   Text(index == 0 ? '00:07:11' : '00:06:40', style: TextStyle(color: ColorsManager.primaryColor, fontSize: 12.sp)),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Text(index == 0 ? '20:48' : '17:09', style: TextStyle(color: ColorsManager.primaryColor, fontSize: 12.sp)),
                                   SizedBox(width: 10.w),
                                    Text(index == 0 ? 'الاثنين, 1 سبتمبر 2025' : 'الأربعاء, 19 مارس 2025', style: TextStyle(color: ColorsManager.primaryColor, fontSize: 12.sp)),
                                 ],
                               )
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Container(
                                 padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(15.r),
                                   border: Border.all(color: Colors.grey.shade300)
                                 ),
                                 child: Row(
                                   children: [
                                     Icon(Icons.star, color: ColorsManager.accentColor, size: 16.sp),
                                     SizedBox(width: 5.w),
                                     Text(index == 0 ? '3.8' : '4.6', style: TextStyle(fontWeight: FontWeight.bold)),
                                   ],
                                 ),
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 children: [
                                   Text('التقييم', style: TextStyle(fontWeight: FontWeight.bold)),
                                   Text(index == 0 ? 'الاثنين, 22 سبتمبر 2025' : 'الخميس, 20 مارس 2025', style: TextStyle(fontSize: 10.sp, color: Colors.grey)),
                                 ],
                               )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Container(
                             width: double.infinity,
                             padding: EdgeInsets.symmetric(vertical: 10.h),
                             decoration: BoxDecoration(
                               border: Border.all(color: ColorsManager.primaryColor),
                               borderRadius: BorderRadius.circular(8.r),
                             ),
                             child: Center(
                               child: Text('تفاصيل التقييم', style: TextStyle(color: ColorsManager.primaryColor, fontWeight: FontWeight.bold)),
                             ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryCard({required String title, required String score}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Text(title, style: TextStyle(color: ColorsManager.textPrimaryColor, fontSize: 14.sp)),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: ColorsManager.accentColor, size: 20.sp),
              SizedBox(width: 5.w),
              Text(score, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp)),
            ],
          ),
        ],
      ),
    );
  }
}
