class Animal {
  final String name;
  final String description;
  final String imageUrl;

  Animal({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

// Realistic descriptions for each animal
List<Animal> animals = [
  Animal(
    name: "Bear",
    description: "Bears are large mammals found in forests and mountains. They are omnivorous and known for their strength.",
    imageUrl: "assets/Bear.jpg",
  ),
  Animal(
    name: "Cat",
    description: "Cats are small, carnivorous mammals often kept as pets. They are known for agility and curiosity.",
    imageUrl: "assets/Cat.jpg",
  ),
  Animal(
    name: "", // missing title
    description: "Cows are domesticated animals raised for milk and meat.",
    imageUrl: "assets/Cow.jpg",
  ),
  Animal(
    name: "Crab",
    description: "", // missing description
    imageUrl: "assets/Crab.jpg",
  ),
  Animal(
    name: "Deer",
    description: "Deer are graceful forest animals with antlers, often found in temperate regions.",
    imageUrl: "assets/MissingImage.jpg", // missing image
  ),
  Animal(
    name: "Dog",
    description: "Dogs are loyal companions and come in various breeds, often trained for work or as pets.",
    imageUrl: "assets/Dog.jpg",
  ),
  Animal(
    name: "Hawk",
    description: "Hawks are birds of prey known for sharp vision and powerful flight.",
    imageUrl: "assets/Hawk.jpg",
  ),
  Animal(
    name: "Horse",
    description: "Horses are strong herbivores often used for riding, work, and sport.",
    imageUrl: "assets/Horse.jpg",
  ),
  Animal(
    name: "Lion",
    description: "Lions are big cats living in Africa, known as the 'king of the jungle'.",
    imageUrl: "assets/Lion.jpg",
  ),
  Animal(
    name: "Sheep",
    description: "Sheep are domesticated animals kept for wool, meat, and milk.",
    imageUrl: "assets/Sheep.jpg",
  ),
  Animal(
    name: "Snake",
    description: "Snakes are elongated reptiles, some venomous, found worldwide.",
    imageUrl: "assets/Snake.jpg",
  ),
  Animal(
    name: "Tiger",
    description: "Tigers are large striped cats native to Asia, powerful and solitary hunters.",
    imageUrl: "assets/Tiger.jpg",
  ),
  Animal(
    name: "Turtle",
    description: "Turtles are reptiles with hard shells and slow movements, found in water and on land.",
    imageUrl: "assets/Turtle.jpg",
  ),
  Animal(
    name: "Whale",
    description: "Whales are the largest marine mammals, known for intelligence and social behavior.",
    imageUrl: "assets/Whale.jpg",
  ),
  Animal(
    name: "Wolf",
    description: "Wolves are wild carnivores that live and hunt in packs, found in forests and tundras.",
    imageUrl: "assets/Wolf.jpg",
  ),
];
