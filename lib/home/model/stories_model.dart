
class StoriesModel{
  String profileImageUrl;
  String reelUrl;
  StoriesModel(this.profileImageUrl, this.reelUrl);
}

final storiesModel = [
  StoriesModel(
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/00/02/fd/exterior-view.jpg?w=1200&h=-1&s=1',
    'https://images.moneycontrol.com/static-mcnews/2021/09/Air-India.jpg?impolicy=website&width=1600&height=900'),
  StoriesModel(
      'https://images.moneycontrol.com/static-mcnews/2021/09/Air-India.jpg?impolicy=website&width=1600&height=900',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/00/02/fd/exterior-view.jpg?w=1200&h=-1&s=1',),
  StoriesModel(
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/be/ec/eb.jpg',
    'https://cdn.siasat.com/wp-content/uploads/2023/01/burj-khalifa-660x495.jpg'),
  StoriesModel(
      'https://cdn.siasat.com/wp-content/uploads/2023/01/burj-khalifa-660x495.jpg',
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/be/ec/eb.jpg'),

  StoriesModel(
      'https://images.lifestyleasia.com/wp-content/uploads/sites/7/2023/02/20135035/best-in-Goa-2-1600x900.jpg',
    'https://cdn.siasat.com/wp-content/uploads/2023/01/burj-khalifa-660x495.jpg'),
];