class OnboardModel {
  final String image, title, description;

  OnboardModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardModel> onboardContents = [
  OnboardModel(
    image: 'assets/images/neuralwel_4.png',
    title: "COMENZÁ A VIVIR TU",
    description:
        "NT EXPERIENCE",
  ),
  OnboardModel(
    image: 'assets/images/conecta_con_cel.png',
    title: "CONECTA",
    description:
        "Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo.",
  ),
  OnboardModel(
    image: 'assets/images/entrena_con_cel.png',
    title: "ENTRENA",
    description:
        "Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico.",
  ),
  OnboardModel(
    image: 'assets/images/analiza_con_cel.png',
    title: "ANALIZA",
    description:
        "Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.",
  ),
];