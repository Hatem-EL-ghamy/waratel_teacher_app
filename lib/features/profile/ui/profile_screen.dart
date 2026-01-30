import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Header
            Container(
              color: ColorsManager.primaryColor, // Use Theme
              padding: EdgeInsets.only(top: 50.h, bottom: 20.h),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3.w)),
                    child: CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.white.withOpacity(0.2),
                      child: Icon(Icons.person,
                          size: 50.sp, color: Colors.white),
                      // backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11'),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'حاتم ناصر اسماعيل',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,
                          color: ColorsManager.accentColor, size: 20.sp),
                      Icon(Icons.star,
                          color: ColorsManager.accentColor, size: 20.sp),
                      Icon(Icons.star,
                          color: ColorsManager.accentColor, size: 20.sp),
                      Icon(Icons.star,
                          color: ColorsManager.accentColor, size: 20.sp),
                      Icon(Icons.star,
                          color: ColorsManager.accentColor, size: 20.sp),
                    ],
                  )
                ],
              ),
            ),
            // Tab Bar
            const TabBar(
              labelColor: ColorsManager.primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: ColorsManager.primaryColor,
              tabs: [
                Tab(text: 'التقييمات'),
                Tab(text: 'المعلومات'),
                Tab(text: 'الخبرة'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Ratings Tab
                  ListView(
                    padding: EdgeInsets.all(16.w),
                    children: [
                      _buildRatingRow('تقييم الطلاب :', 4.4),
                      SizedBox(height: 15.h),
                      _buildRatingRow('تقييم المقيمين :', 4.4),
                      SizedBox(height: 15.h),
                      _buildRatingRow('التقييم الالي :', 0.0), // Grey stars
                      SizedBox(height: 30.h),
                      Text(
                        'التعليقات :',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15.h),
                      // Comment Card
                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('حاتم ناصر اسماعيل', // Updated Name here
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 14.sp)),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: Colors.grey,
                                  child:
                                      Icon(Icons.person, color: Colors.white, size: 24.sp),
                                )
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'مميز جدا والله',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            Text(
                              'الله يبارك فيك يا شيخ سلمان', // Keeping original comment content as requested, only changed name
                              textAlign: TextAlign.right,
                               style: TextStyle(fontSize: 14.sp),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '15/05/2024 07:06 م',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.sp),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // Placeholders for other tabs
                  const Center(child: Text('معلومات المعلم')),
                  const Center(child: Text('خبرات المعلم')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRatingRow(String label, double rating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              Icons.star,
              color: index < rating.floor()
                  ? ColorsManager.accentColor
                  : Colors.grey.shade300,
              size: 24.sp,
            );
          }),
        ),
        SizedBox(width: 20.w),
        Text(rating.toString(), style: TextStyle(color: Colors.grey, fontSize: 14.sp)),
        const Spacer(),
        Text(label,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
