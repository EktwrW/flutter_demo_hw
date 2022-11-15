import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';

part 'package:flutter_demo_hw/Onboarding/onboarding_widgets.dart';
part 'onboarding_constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with SingleTickerProviderStateMixin {
  final PageController controller = PageController();
  late TabController tabController;

  final ValueNotifier<int> currentView = ValueNotifier<int>(0);

  late double width;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: screens.length, vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    width = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentView,
      builder: (_, currentViewValue, __) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    PageView(
                      physics: const ScrollPhysics(),
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (value) => currentView.value = tabController.index = value,
                      children: screens,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: hashtagOnBoardPadding),
                        child: OnboardingWidgets.hashtagOnBoardText(currentViewValue),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: OnboardingWidgets.neuralOnBoardLogo(currentViewValue),
                    ),
                    OnboardingWidgets.getOnBoardTextWidgets(currentViewValue),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: positionedCirclesPadding),
                        child: TabPageSelector(controller: tabController),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: OnboardingWidgets.loginButton(
                        width,
                        buttonPadding,
                        greenFromDesign,
                        buttonHeight,
                        buttonText,
                        () {},
                        buttonBorderRadius,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
