part of 'onboarding.dart';

//Strings
const String ntExperience = 'NT EXPERIENCE';
const String comenzaAVivirTu = 'COMENZÁ A VIVIR TU';
const String conecta = 'CONECTA';
const String parrafoConecta =
    'Conecta tus neuro sensores a la aplicación\nNeural Trainer y comienza a aumentar tu\nrendimiento cognitivo.';
const String entrena = 'ENTRENA';
const String parrafoEntrena =
    'Selecciona una actividad creada por el equipo\nde Neural Trainer o crea tu propio\nentrenamiento específico.';
const String analiza = 'ANALIZA';
const String parrafoAnaliza =
    'Monitorea el desempeño de tus atletas, registra\nsus resultados y compártelos en tiempo real.';
const String moveYourMind = '#MOVEYOURMIND';
const String buttonText = 'INICIAR SESIÓN';

//Screens
const List<Widget> screens = [
  Image(image: AssetImage('assets/images/neural.png'), fit: BoxFit.cover),
  Image(image: AssetImage('assets/images/conecta.png'), fit: BoxFit.cover),
  Image(image: AssetImage('assets/images/entrena.png'), fit: BoxFit.cover),
  Image(image: AssetImage('assets/images/analiza.png'), fit: BoxFit.cover),
];

//Dimensions
const double buttonPadding = 20;
const double buttonHeight = 50;
const double buttonBorderRadius = 40;
const double positionedCirclesPadding = 105;
const double genericPaddingX15 = 15;
const double genericPaddingX30 = 30;
const double hashtagOnBoardPadding = 85;

//Colors
const Color greenFromDesign = Color(0xff16F581);

//TextStyles
final secondaryTextStyle =
    GoogleFonts.rubik(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22);
final paragraphTextStyle = GoogleFonts.rubik(color: Colors.white, fontSize: 14);
final mainTextStyle =
    GoogleFonts.rubik(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: greenFromDesign, fontSize: 38);
final hashtagTextStyle =
    GoogleFonts.rubik(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26);
