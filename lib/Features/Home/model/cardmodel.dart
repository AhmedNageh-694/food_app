class CardModel {
  final String titel;
  final String suptitel;
  final String? price;
  final String image;
  const CardModel(
      {required this.titel, required this.suptitel, required this.image, this.price});
}
