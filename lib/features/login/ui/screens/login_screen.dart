import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/routing/routers.dart';
import '../../../../core/helpers/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40.h),

                // Logo
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      AppAssets.appLogo,
                      height: 100.h,
                      width: 100.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                
                SizedBox(height: 16.h),
                
                // Subtitle
                Text(
                  'قم بتسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: TextStyles.font16RegularTextPrimary.copyWith(
                    color: AppColors.textSecondaryColor,
                  ),
                ),

                SizedBox(height: 60.h),

                // Email Field
                _buildTextField(
                  label: 'البريد الإلكتروني',
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 24.h),

                // Password Field
                _buildTextField(
                  label: 'كلمة المرور',
                  icon: Icons.lock_outline,
                  isPassword: true,
                  isObscure: isObscureText,
                  onVisibilityToggle: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                ),

                SizedBox(height: 40.h),

                // Login Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.home);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyles.font16SemiBoldWhite.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    bool isPassword = false,
    bool? isObscure,
    VoidCallback? onVisibilityToggle,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: isObscure ?? false,
        keyboardType: keyboardType,
        style: TextStyles.font16RegularTextPrimary,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyles.font14RegularTextSecondary,
          prefixIcon: Icon(
            icon,
            color: AppColors.secondaryColor,
            size: 22.sp,
          ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    isObscure! ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: AppColors.secondaryColor,
                    size: 22.sp,
                  ),
                  onPressed: onVisibilityToggle,
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
              width: 1.5,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
