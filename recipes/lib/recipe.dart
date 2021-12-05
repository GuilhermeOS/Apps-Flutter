class Recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

  static List<Recipe> samples = [
    Recipe(
      'Espaguete e Bolinha de Carne',
      'assets/espaguete.jpg',
      4,
      [
        Ingredient(1, 'box', 'Espaguete'),
        Ingredient(4, '', 'Bolinha de Carne'),
        Ingredient(0.5, 'lata', 'Molho'),
      ],
    ),
    Recipe(
      'Sopa de Tomate',
      'assets/sopaTomate.jpg',
      1,
      [Ingredient(1, 'Pacote', 'Sopa de Tomate')],
    ),
    Recipe(
      'Misto Quente',
      'assets/coisaQueijo.jpg',
      1,
      [
        Ingredient(2, 'Fatias', 'Queijo'),
        Ingredient(2, 'Fatias', 'Pão'),
      ],
    ),
    Recipe(
      'Cookies',
      'assets/cookie.jpg',
      24,
      [
        Ingredient(4, 'copos', 'Farinha'),
        Ingredient(2, 'copos', 'Açúcar'),
        Ingredient(0.5, 'copos', 'Gotas de Chocolate'),
      ],
    ),
    Recipe(
      'Taco',
      'assets/taco.jpg',
      1,
      [
        Ingredient(4, 'gramas', 'Nachos'),
        Ingredient(3, 'gramas', 'Carne de Taco'),
        Ingredient(0.5, 'copo', 'Queijo'),
        Ingredient(0.25, 'copo', 'Extrato de Tomate'),
      ],
    ),
    Recipe(
      'Pizza Hawaiiana',
      'assets/pizzaHawai.jpg',
      4,
      [
        Ingredient(1, 'item', 'Pizza'),
        Ingredient(1, 'copo', 'Abacaxi'),
        Ingredient(8, 'gramas', 'Ham'),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
