

class PopularPlacesModel {
 String headerTitle;
 List<PlacesModel> places;
 PopularPlacesModel(this.headerTitle, this.places);
}
class PlacesModel {
  String imageUrl;
  String title;
  String name;
  PlacesModel(this.imageUrl, this.title, this.name);
}
final popularPlaces = PopularPlacesModel('Most Popular Now', [
  PlacesModel(
      'https://warsawtour.pl/wp-content/uploads/2018/08/Palace-of-Culture-and-Science-3_fot.-Piotr-Wierzbowski.jpg',
      'Palace of Culture and Science',
      'Warsaw'),
  PlacesModel(
      'https://europeremembers.com/wp-content/uploads/2018/07/Museum-of-the-Second-World-War-Gdansk-1024x768.jpg',
      'Second world war Museum',
      'Gdansk'),
  PlacesModel(
      'https://static.toiimg.com/photo/56082125.cms',
      'Royal Castle',
      'Warsaw'),
  PlacesModel(
      'https://www.designingbuildings.co.uk/w/images/b/b6/TajMahal1.jpg',
      'Agra palace The Taj mahal',
      'Agra'),
  PlacesModel(
      'https://www.milligazette.com/media/images/vhp-ram-mandir-ayodhya.max-600x400.jpg',
      'Shree Ram mandir Holy palce',
      'Ayodhya'),
  PlacesModel(
      'https://media-cdn.tripadvisor.com/media/photo-s/16/e0/7b/c2/picture-clicked-at-the.jpg',
      'The india gate',
      'Delhi'),
]);