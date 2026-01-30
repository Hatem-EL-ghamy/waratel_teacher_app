import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waratel_app/core/theming/colors.dart';
import '../../../../core/widgets/custom_page_header.dart';
import '../../../../core/widgets/info_card.dart';
import '../../../../core/widgets/empty_state_display.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  bool showCompletedCalls = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor, // Header bg color
      body: CustomPageHeader(
        title: 'السجل',
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            children: [
              // Filter and Current Month
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsManager.primaryColor),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Row(
                      children: [
                        Text('تصفية', style: TextStyle(color: ColorsManager.primaryColor, fontSize: 14.sp)),
                        SizedBox(width: 5.w),
                        Icon(Icons.filter_alt_outlined, color: ColorsManager.primaryColor, size: 18.sp),
                      ],
                    ),
                  ),
                   Text('الشهر الحالي', style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
                ],
              ),
              SizedBox(height: 20.h),
              
              // Stats Cards
              Row(
                children: [
                  // Online Status Card
                  Expanded(
                    child: InfoCard(
                      backgroundColor: Colors.white,
                      height: 120.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.wifi, color: ColorsManager.secondaryColor, size: 20.sp),
                              SizedBox(width: 5.w),
                              Text('متصل أونلاين', style: TextStyle(fontSize: 14.sp, color: ColorsManager.textPrimaryColor)),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text('00:00:00', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  // Balance Card
                  Expanded(
                    child: InfoCard(
                      backgroundColor: ColorsManager.secondaryColor,
                      height: 120.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.account_balance_wallet, color: Colors.white, size: 18.sp),
                              SizedBox(width: 5.w),
                              Text('الرصيد هو', style: TextStyle(color: Colors.white, fontSize: 14.sp)),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text('0 دولار امريكي', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5.h),
                          Text('مقابل 00:00:00', style: TextStyle(color: ColorsManager.primaryColor, fontSize: 12.sp)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),

              // Toggle Buttons
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => showCompletedCalls = false),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          decoration: BoxDecoration(
                            color: !showCompletedCalls ? ColorsManager.secondaryColor : Colors.transparent,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            'مكالمات فائتة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: !showCompletedCalls ? Colors.white : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => showCompletedCalls = true),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          decoration: BoxDecoration(
                            color: showCompletedCalls ? ColorsManager.secondaryColor : Colors.transparent,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            'مكالمات مكتملة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: showCompletedCalls ? Colors.white : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              
              // Empty State
              const EmptyStateDisplay(message: 'لا يوجد مكالمات'),
            ],
          ),
        ),
      ),
    );
  }
}
