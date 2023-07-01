


class TouristModel {
  String title;
  String subtitle;
  String cityImageUrl;
  List<TouristPlacesModel> touristPlaces;
  TouristModel(this.title, this.subtitle, this.cityImageUrl, this.touristPlaces);
}
class TouristPlacesModel {
  String imageUrl;
  String name;
  TouristPlacesModel(this.imageUrl, this.name);
}
final touristModel = TouristModel(
    'Poland',
    'Aspellbinding cities whare culture collide',
    'https://c4.wallpaperflare.com/wallpaper/732/761/117/sea-wave-night-bridge-wallpaper-preview.jpg' ,
    [
      TouristPlacesModel(
      'https://warsawtour.pl/wp-content/uploads/2018/08/Palace-of-Culture-and-Science-3_fot.-Piotr-Wierzbowski.jpg',
      'Warsaw'),
      TouristPlacesModel(
      'https://europeremembers.com/wp-content/uploads/2018/07/Museum-of-the-Second-World-War-Gdansk-1024x768.jpg',
      'Gdansk'),
      TouristPlacesModel(
      'https://static.toiimg.com/photo/56082125.cms',
      'Warsaw'),
      TouristPlacesModel(
      'https://www.designingbuildings.co.uk/w/images/b/b6/TajMahal1.jpg',
      'Agra'),
      TouristPlacesModel(
      'https://www.milligazette.com/media/images/vhp-ram-mandir-ayodhya.max-600x400.jpg',
      'Ayodhya'),
      TouristPlacesModel(
      'https://media-cdn.tripadvisor.com/media/photo-s/16/e0/7b/c2/picture-clicked-at-the.jpg',
      'Delhi'),
]);