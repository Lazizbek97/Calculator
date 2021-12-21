class AllData {
  static Map myFoods = {
    "burgers": {
      0: {
        "name": "Big Burger",
        "picture": "assets/images/burgers/big_burger.png",
        "price": 12,
        "about": "Lorem Ipsum lorem ipsum"
      },
      1: {
        "name": "Cheese Burger",
        "picture": "assets/images/burgers/cheese_burger.png",
        "price": 14,
        "about": "Lorem Ipsum lorem ipsum"
      },
      2: {
        "name": "Double Burger",
        "picture": "assets/images/burgers/double_burger.png",
        "price": 16,
        "about": "Lorem Ipsum lorem ipsum"
      },
      3: {
        "name": "Checken Burger",
        "picture": "assets/images/burgers/checken_burger.png",
        "price": 10,
        "about": "Lorem Ipsum lorem ipsum"
      },
      4: {
        "name": "Doner",
        "picture": "assets/images/burgers/doner.png",
        "price": 8,
        "about": "Lorem Ipsum lorem ipsum"
      },
      5: {
        "name": "Hot Dog",
        "picture": "assets/images/burgers/hotdog.png",
        "price": 6,
        "about": "Lorem Ipsum lorem ipsum"
      },
    },
    "set": {
      0: {
        "name": "Lanch Box",
        "picture": "assets/images/foodset/lanchBox.png",
        "price": 15,
        "about": "Lorem Ipsum lorem ipsum"
      },
      1: {
        "name": "Combo Box",
        "picture": "assets/images/foodset/comboBox.png",
        "price": 17.8,
        "about": "Lorem Ipsum lorem ipsum"
      },
      2: {
        "name": "Bo'kib o'l Box",
        "picture": "assets/images/foodset/bokibOl.png",
        "price": 21.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      3: {
        "name": "Lanch Box Kids",
        "picture": "assets/images/foodset/kidsLanchBox.png",
        "price": 13.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
    },
    "pizzas": {
      0: {
        "name": "Margaretta",
        "picture": "assets/images/pizzas/margaretta.png",
        "price": 11.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      1: {
        "name": "Peperroni",
        "picture": "assets/images/pizzas/peperroni.png",
        "price": 10.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      2: {
        "name": "Cheese piza",
        "picture": "assets/images/pizzas/cheese.png",
        "price": 6.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      3: {
        "name": "Hot Spicy Piza",
        "picture": "assets/images/pizzas/spicy.png",
        "price": 7.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
    },
    "drinks": {
      0: {
        "name": "Coca Cola",
        "picture": "assets/images/drinks/cocacola.png",
        "price": 7.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      1: {
        "name": "Pepsi Cola",
        "picture": "assets/images/drinks/pepsicola.png",
        "price": 7.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      2: {
        "name": "Juice",
        "picture": "assets/images/drinks/juice.png",
        "price": 11.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      3: {
        "name": "Tea",
        "picture": "assets/images/drinks/tea.png",
        "price": 3.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      4: {
        "name": "Water",
        "picture": "assets/images/drinks/water.png",
        "price": 1.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
    },
    "coffee": {
      0: {
        "name": "Cappucino",
        "picture": "assets/images/coffees/cappucino.png",
        "price": 7.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      1: {
        "name": "Espresso",
        "picture": "assets/images/coffees/espresso.png",
        "price": 4.5,
        "about": "Lorem Ipsum lorem ipsum"
      },
      2: {
        "name": "Americano",
        "picture": "assets/images/coffees/americano.png",
        "price": 3.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      3: {
        "name": "Late",
        "picture": "assets/images/coffees/late.png",
        "price": 4.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
      4: {
        "name": "Moca",
        "picture": "assets/images/coffees/moca.png",
        "price": 5.9,
        "about": "Lorem Ipsum lorem ipsum"
      },
    },
    "menu": [
      "assets/images/foods_menu/burger.png",
      "assets/images/foods_menu/foodset.png",
      "assets/images/foods_menu/pizza.png",
      "assets/images/foods_menu/drink.png",
      "assets/images/foods_menu/coffee.png",
    ],
    "toBuy": {
      "name": [],
      "about": [],
      "pic": [],
      "price": [],
      "number": [],
    }
  };

  static change_menu(int index) {
    switch (index) {
      case 0:
        return AllData.myFoods['burgers'];
      case 1:
        return AllData.myFoods['set'];
      case 2:
        return AllData.myFoods['pizzas'];
      case 3:
        return AllData.myFoods['drinks'];
      case 4:
        return AllData.myFoods['coffee'];
      default:
    }
  }

  static balance() {
    num balance = 0;
    if (AllData.myFoods['toBuy']['number'].isEmpty) {
      return 0;
    } else {
      for (var i = 0; i < AllData.myFoods['toBuy']['number'].length; i++) {
        num jb = 0;

        jb = AllData.myFoods['toBuy']['number'][i] *
            AllData.myFoods['toBuy']['price'][i];
        balance += jb;
      }
      return balance;
    }
  }
}
