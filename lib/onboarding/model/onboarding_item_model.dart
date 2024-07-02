class OnboardingItem {
  final String title;
  final String description;
  final String image;

  OnboardingItem({required this.title, required this.description, required this.image});

  static List<OnboardingItem> allItems() {
    return [
      OnboardingItem(
          title: "Scan dan Bandingkan",
          image: "onboarding_1.png",
          description: "Arahkan kamera lalu scan barcode pada kemasan untuk melihat informasi secara praktis!"),
      OnboardingItem(
          title: "Simpan Data Jajanan Harian",
          image: "onboarding_2.png",
          description: "Simpan data jajanan kamu dan temukan dengan mudah di kemudian hari"),
      OnboardingItem(
          title: "Personalisasi",
          image: "onboarding_3.png",
          description:
              "Personalisasi sesuai kebutuhan kamu dan kami dapat menjagamu dari kandungan yang tidak sesuai untuk tubuhmu.")
    ];
  }
}
