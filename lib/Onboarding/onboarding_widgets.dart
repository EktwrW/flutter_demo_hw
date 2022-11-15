part of 'onboarding.dart';

class OnboardingWidgets {
  static Widget loginButton(
    double width,
    double buttonPadding,
    Color buttonColor,
    double buttonHeight,
    String buttonText,
    Function()? onPressed,
    double buttonBorderRadius,
  ) {
    return Padding(
      padding: EdgeInsetsDirectional.all(buttonPadding),
      child: MaterialButton(
        onPressed: onPressed!,
        color: buttonColor,
        minWidth: width - buttonPadding,
        height: buttonHeight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(buttonBorderRadius))),
        child: Text(buttonText),
      ),
    );
  }

  static Widget neuralOnBoardLogo(int currentIndex) {
    return Visibility(
      visible: currentIndex == 0,
      child: FadeIn(
        child: const Padding(
          padding: EdgeInsets.only(bottom: 60),
          child: Image(
            height: 45,
            image: AssetImage('assets/images/neural_trainer.png'),
          ),
        ),
      ),
    );
  }

  static Widget neuralOnBoardText(int currentIndex) {
    return Visibility(
      visible: currentIndex == 0,
      child: FadeIn(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(comenzaAVivirTu, style: secondaryTextStyle),
            const SizedBox(height: genericPaddingX15),
            Text(ntExperience, style: mainTextStyle),
          ],
        ),
      ),
    );
  }

  static Widget conectaOnBoardText(int currentIndex) {
    return Visibility(
      visible: currentIndex == 1,
      child: FadeIn(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(conecta, style: mainTextStyle),
            const SizedBox(height: genericPaddingX30),
            Text(parrafoConecta, textAlign: TextAlign.center, style: paragraphTextStyle),
          ],
        ),
      ),
    );
  }

  static Widget entrenaOnBoardText(int currentIndex) {
    return Visibility(
      visible: currentIndex == 2,
      child: FadeIn(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(entrena, style: mainTextStyle),
            const SizedBox(height: genericPaddingX30),
            Text(parrafoEntrena, textAlign: TextAlign.center, style: paragraphTextStyle),
          ],
        ),
      ),
    );
  }

  static Widget analizaOnBoardText(int currentIndex) {
    return Visibility(
      visible: currentIndex == 3,
      child: FadeIn(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(analiza, style: mainTextStyle),
            const SizedBox(height: genericPaddingX30),
            Text(parrafoAnaliza, textAlign: TextAlign.center, style: paragraphTextStyle),
            const SizedBox(height: genericPaddingX15),
          ],
        ),
      ),
    );
  }

  static Widget hashtagOnBoardText(int currentIndex) {
    return Visibility(
      visible: currentIndex != 0,
      child: FadeIn(
        child: Text(moveYourMind, style: hashtagTextStyle),
      ),
    );
  }

  static Widget getOnBoardTextWidgets(int currentViewValue) {
    late Widget textWidget;

    switch (currentViewValue) {
      case 0:
        textWidget = OnboardingWidgets.neuralOnBoardText(currentViewValue);
        break;
      case 1:
        textWidget = OnboardingWidgets.conectaOnBoardText(currentViewValue);
        break;
      case 2:
        textWidget = OnboardingWidgets.entrenaOnBoardText(currentViewValue);
        break;
      case 3:
        textWidget = OnboardingWidgets.analizaOnBoardText(currentViewValue);
        break;
      default:
        textWidget = OnboardingWidgets.neuralOnBoardText(currentViewValue);
    }

    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 160, left: 10, right: 10),
        child: textWidget,
      ),
    );
  }
}
