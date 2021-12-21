class AllCaffees {
  static Map myCoffees = {
    'picture': [],
    'name': [],
    'price': [],
    'soni': [],
  };
  static Map coffee_data = {
    "coffee_types": [
      'Espresso',
      'Latte',
      'Cappuccino',
      'Americano',
      'Mocha',
      'Affogato',
      'Macchiato'
    ],
    "coffee_prices": [
      [
        [2.4],
        [3.4],
        [1.4],
      ],
      [
        [2.3],
        [3.1],
        [1.5],
        [2.8],
        [3.42],
        [5.4],
        [6.4],
      ],
      [
        [10.4],
        [13.4],
        [11.4],
      ],
      [
        [3.5],
        [4.4],
        [5.4],
        [5.9],
      ],
      [
        [13.5],
        [14.4],
        [15.4],
      ],
      [
        [23.5],
        [24.4],
        [25.4],
        [25.9],
      ],
      [
        [3.5],
        [5.8],
        [7.4],
      ],
    ],
    "coffee_drinks": [
      [
        'Double Espresso',
        'Single Espresso',
        'Espresso Sweat',
      ],
      [
        'Vanilla Latte',
        'Hazelnut Latte',
        'Caramel Latte',
        'Cinnamon Latte',
        'Pumpkin Spice Latte',
        'Pistachio Latte',
        'Ice Latte'
      ],
      ['Cappuccino double', 'Cappuccino with Choco', 'Ice Cappuccino'],
      ['Ice Americano', 'Americano double', 'Hot Americano', 'Americano Sweat'],
      [
        'Cherry Mocha',
        'Peppermint Mocha',
        'Mocha Frappuccino',
      ],
      [
        'AFFOGATO',
        'Chai Affogato',
        'Irish Whiskey Affogato',
        'Banana Fosters Affogato'
      ],
      [
        'Milk Mocha Macchiato',
        'Cloud Caramel Macchiato',
        'Iced Caramel Macchiato'
      ],
    ],
    'pictures_link': [
      [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjcy7LjrpdJuOi_dVQ6w_lalDSHteYBNHui7AFfw6x4ZxMGrbj3mMx1_3br91xT7cAi28&usqp=CAU',
        'https://cdn.shopify.com/s/files/1/1135/9342/articles/single_vs_double_espresso_29e34a2a-7623-417f-a000-a69fc2e89edb_2000x.jpg?v=1565203448',
        'https://www.lacantina.ae/wp-content/uploads/2019/01/ESPRESSO.jpg',
      ],
      [
        'https://sipcoffeehouse.com/wp-content/uploads/2021/06/coconut-latte.jpg',
        'https://cbtl-images.s3.us-west-1.amazonaws.com/Production/Drupal/s3fs-public/styles/cafe_menu_item/public/cafe-menu/Iced_Hazelnut_Latte.jpg?itok=H8v6qClq',
        'https://sipcoffeehouse.com/wp-content/uploads/2021/06/caramel-latte.jpg',
        'https://sipcoffeehouse.com/wp-content/uploads/2021/06/mocha-3.jpg',
        'https://sipcoffeehouse.com/wp-content/uploads/2021/06/gingerbread-latte.jpg',
        'https://tyummies.com/wp-content/uploads/2020/09/Iced-Pistachio-Latte.jpg',
        'https://www.baristainstitute.com/sites/default/files/styles/some_share/public/images/Tazza_Ice_Latte.jpg?itok=V-dEBL6t'
      ],
      [
        'https://www.vitamix.com/media/other/images/Caramel_Latte.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/a/aa/Cappuccino_with_Chocolate.jpg',
        'https://previews.123rf.com/images/kidwai/kidwai1809/kidwai180900001/110660740-ice-cappuccino-in-glass.jpg'
      ],
      [
        'https://media-cdn.tripadvisor.com/media/photo-s/11/6f/a6/8d/iced-americano.jpg',
        'http://4.bp.blogspot.com/-27q6MiBaZCk/T4L4uoIkS6I/AAAAAAAAMHI/kR6HKjYEhPY/s1600/Canyon+(1).JPG',
        'https://www.comunicaffe.com/wp-content/uploads/2014/02/Americano1.jpeg',
        'https://asweatlife.com/wp-content/uploads/2020/10/how-to-quit-coffee-1024x683.png'
      ],
      [
        'https://southerndiscourse.com/wp-content/uploads/2019/02/Cherry-Mocha-MAIN.jpg',
        'https://bakingmischief.com/wp-content/uploads/2018/12/peppermint-mocha-image-square-1-500x500.jpg',
        'https://bakingmischief.com/wp-content/uploads/2019/05/iced-mocha-image-square.jpg'
      ],
      [
        'https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FPhoto%2FRecipes%2F2020-07-How-to-make-affogato-at-home%2FKitchn_HowTo_Affogato_0281',
        'https://www.chatelaine.com/wp-content/uploads/2015/11/Chai-affogato.jpg',
        'https://casualmixologist.com/wp-content/uploads/2020/03/Web_IrishCoffee-1200x640.jpg',
        'https://thealmondeater.com/wp-content/uploads/2016/05/Bananas-Foster-Affogato-151.jpg'
      ],
      [
        'https://www.partiesbymartins.com/image/cache/data/rapid%20pick%20up%20/starbucks%20/Sbux%20Iced%20Coconut%20Milk%20Mocha%20Macchiato%20PBM-600x600.jpg',
        'https://globalassets.starbucks.com/assets/9777c1c7847440f3aab15f4488529a61.jpg?impolicy=1by1_wide_topcrop_630',
        'https://bakingmischief.com/wp-content/uploads/2019/05/iced-caramel-macchiato-image-square.jpg'
      ]
    ]
  };

  static coffee_types(int index) {
    return AllCaffees.coffee_data['coffee_drinks'][index];
  }

  static pics_link(int index) {
    return AllCaffees.coffee_data['pictures_link'][index];
  }

  static get_price(int index) {
    return AllCaffees.coffee_data['coffee_prices'][index];
  }

  static double boshlangichSumma() {
    if (AllCaffees.myCoffees['price'].isEmpty) {
      return 0;
    } else {
      return AllCaffees.myCoffees['price'].reduce((a, b) => a + b);
    }
  }
}
