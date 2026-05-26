class AppMedia {
  // _varName - A private Variable which can only be accessed within this class.
  static const _baseImage = "assets/images"; // tells flutter code about image location
  static const logo = '$_baseImage/logo.png';
  static const hotelRoom = '$_baseImage/hotel_room.png';
  static const planeSit = '$_baseImage/plane_sit.jpg';
  static const visaCard = '$_baseImage/visa_card.png';
  //static means it's not part of the class instance/object but class itself meaning we can directly use the class name to access it i.e. no need to use an instance or create an instance to access it.
  //const helps to assign a value which can't be changed during the run time
}