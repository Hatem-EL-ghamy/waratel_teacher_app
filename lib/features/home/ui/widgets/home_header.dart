import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0.w),
      color: ColorsManager.primaryColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               // Menu (Right in RTL)
               IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
               SizedBox(width: 8.w),
               // Avatar (Next to Menu)
               InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, '/profile');
                 },
                 child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: ColorsManager.secondaryColor,
                  child: const Icon(Icons.person, color: Colors.white),
              ),
               ),
              SizedBox(width: 10.w),
               // Greeting (Text)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align to right in RTL
                  children: [
                    Text(
                      '! أهلا بك',
                      style: TextStyle(fontSize: 14.sp, color: Colors.white70),
                    ),
                     Text(
                      'حاتم ناصر اسماعيل',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
                // Notification (Left in RTL)
                Stack(
                  children: [
                    Icon(Icons.notifications, color: Colors.white, size: 28.sp),
                     Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 12.w,
                          minHeight: 12.h,
                        ),
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                )

            ],
          ),
          SizedBox(height: 20.h),
          // Banner Section
          Container(
             padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: ColorsManager.greenLight, // Use App Theme (was purple)
              borderRadius: BorderRadius.circular(12.r),
            ),
             child: Row(
               children: [
                 Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'هل ترغب بعرض وثائق\nالقراءات في ملف المعلم',
                         // textAlign: TextAlign.right, // Removed explicit align to inherit RTL
                         style: TextStyle(
                           color: ColorsManager.textPrimaryColor,
                           fontWeight: FontWeight.bold,
                           fontSize: 16.sp,
                         ),
                       ),
                       SizedBox(height: 10.h),
                       ElevatedButton(
                         onPressed: () {},
                         style: ElevatedButton.styleFrom(
                           backgroundColor: ColorsManager.accentColor, // Gold button
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(8.r),
                           ),
                         ),
                         child: Text('ارفعها الآن عبر النقر هنا', style: TextStyle(color: Colors.white, fontSize: 13.sp)),
                       )
                     ],
                   ),
                 ),
                 // Image placeholder
                  Container(
                    height: 80.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8.r)
                    ),
                    child: Icon(Icons.checklist_rtl, color: Colors.white, size: 40.sp),
                  )
               ],
             ),
          )
        ],
      ),
    );
  }
}
