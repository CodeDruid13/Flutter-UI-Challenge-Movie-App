class Movie {
  final String name;
  final String category;
  final String rating; 
  final String description;
  final String image; 

  Movie({
    this.name,
    this.category,
    this.rating,
    this.image,
    this.description, 
  });
}

List<Movie> moviedata = [
  Movie(
      name: 'Toy Story 4',
      category: 'Animation, Adventure',
      rating: "4.8", 
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      image: 'assets/images/toy4.jpg',),
   
   
  Movie(
      name: 'Godzilla',
      category: 'Action, Adventure',
      rating: "4.5", 
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      image: 'assets/images/godzilla.jpg',),
];
