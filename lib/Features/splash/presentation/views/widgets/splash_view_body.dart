import 'package:bookl_app/core/utils/app_router.dart';
import 'package:bookl_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'slideing_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideingAnimation;

  @override
  void initState() {
    super.initState();

    initeSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    // وقف الانميشن كنترولور علشان الحفاظ علي الميموري
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlideingText(slideingAnimation: slideingAnimation),
      ],
    );
  }

  void initeSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    // تشغيل الـ AnimationController
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(
        //   () => const HomeView(),
        //   transition: Transition.fadeIn,
        //   duration: kTranstionDuration,
        // );
        // ignore: use_build_context_synchronously
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }
}
