import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/main_button.dart';
import 'package:hajj_app/Screens/manasek_screen.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});
  final bool isSoundEnabeld = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,

                  backgroundColor: AppColors.primary,
                  child: Transform.rotate(
                    angle: 2.5,
                    child: Icon(
                      Icons.mode_night_outlined,
                      color: AppColors.iconBackground,
                      size: 70,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'دليل المناسك',
                  style: AppTheme.lightTheme.textTheme.titleLarge!.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 20),

                Text(
                  'مرحباً بك في',
                  textAlign: TextAlign.center,
                  style: AppTheme.lightTheme.textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'مساعدك الشخصي لأداء "مناسك الحج والعمرة بكل طمأنينة ويسر"',
                  textAlign: TextAlign.center,
                  style: AppTheme.lightTheme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Container(
                  height: 180,
                  width: 300,
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/kaba.png", fit: .cover),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(12),

                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(blurRadius: 8, color: Colors.black26),
                      ],
                    ),

                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 40,

                            backgroundColor: AppColors.primary,
                            child: Icon(
                              isSoundEnabeld
                                  ? Icons.volume_off_outlined
                                  : Icons.volume_up_outlined,
                              size: 60,
                              color: AppColors.iconBackground,
                            ),
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'التوجيه الصوتي',
                                style: AppTheme.lightTheme.textTheme.bodyLarge,
                              ),

                              Text(
                                'سماع المناسك بدلاً من القراءة',
                                style: AppTheme.lightTheme.textTheme.bodyMedium!
                                    .copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.circle, color: AppColors.primary),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                MainButton(
                  icon: Icons.play_arrow_rounded,
                  title: "إبدأ الرحلة   ",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManasekScreen()),
                    );
                  },
                ),

                Text(
                  'خطوة بخطوة نحو منسكاً مبرور بإذن الله',
                  style: AppTheme.lightTheme.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//  Consumer<SoundProvider>(
//             builder: (context, SoundProvider, _) {
//               return AudioControlButton(
//                 isPlaying: SoundProvider.isAudioEnabled,
//                 onPlayPause: () {
//                   SoundProvider.toggleAudio();
//                 },
//               );
//             },
//           ),

//           Consumer<SoundProvider>(
//             builder: (context, SoundProvider, _) {
//               return AudioButton(
//                 isMuted: SoundProvider.isAudioEnabled,
//                 onPressed: () {
//                   SoundProvider.toggleAudio();
//                 },
//               );
//             },
//           ),
