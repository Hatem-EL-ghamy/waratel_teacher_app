import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waratel_app/core/theming/colors.dart';
import '../../../../core/widgets/custom_page_header.dart';
import '../../../../core/widgets/info_card.dart';
import '../../../../core/widgets/empty_state_display.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: CustomPageHeader(
        title: 'الجدول',
        child: Container(
          width: double.infinity,
           decoration: BoxDecoration(
            color: Colors.white,
            // Header curve is handled by CustomPageHeader, just need bg white here potentially
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            children: [
              // Warning Cards
              _buildWarningCard(
                icon: Icons.calendar_today,
                title: 'إلغاء الجلسة قبل الموعد',
                subtitle: 'تقدر تلغي أي جلسة قبل 12 ساعة من موعد الجلسة',
                iconBgColor: Colors.amber,
              ),
              SizedBox(height: 16.h),
              _buildWarningCard(
                icon: Icons.person,
                title: 'عدم حضور الطالب للجلسة',
                subtitle: 'سيتم إضافة 30% من الدقائق المحجوزة إلى رصيدك',
                iconBgColor: Colors.amber,
              ),
              
              SizedBox(height: 50.h),
              // Empty State
              const EmptyStateDisplay(
                icon: Icons.calendar_month_outlined,
                message: 'لا توجد مواعيد مجدولة حتى الآن',
                subMessage: 'الطلاب المنتظمون في الدراسة معك سيتمكنون من حجز عدد أكبر من الحصص',
              ),
              
              const Spacer(),
              
              // Add Button
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addAppointment');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: ColorsManager.primaryColor,
                    side: const BorderSide(color: ColorsManager.primaryColor),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
                    elevation: 0,
                  ),
                  child: Text(
                    'إضافة مواعيد الآن',
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWarningCard({required IconData icon, required String title, required String subtitle, required Color iconBgColor}) {
    return InfoCard(
      backgroundColor: const Color(0xFFFFF9E6), // Light yellow bg
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                SizedBox(height: 5.h),
                Text(subtitle, style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          CircleAvatar(
            backgroundColor: iconBgColor,
            radius: 20.r,
            child: Icon(icon, color: Colors.white, size: 20.sp),
          )
        ],
      ),
    );
  }
}
