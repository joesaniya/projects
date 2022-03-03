import 'package:flutter/material.dart';
import './Category.dart';
import 'meal.dart';





const DUMMY_CATEGORIES=const[
  Category(
    id:'c1',
    // title: 'Italian',
    color: Colors.purple,
    // image: 'assets/images/spaghatti.jpg',
    title: 'Indian Curries',
    image: 'assets/images/asian.jpg',
   ),
   Category(
    id:'c2',
    // title: 'Quick & Easy',
    color: Colors.red,
    // image: 'assets/images/sandwitch.jpg',
    title: 'Drink',
    image: 'assets/images/drink.jpg',
   ),
   Category(
    id:'c3',
    // title: 'Hamburgers',
    color: Colors.orange,
    // image: 'assets/images/hamburgers.jpg',
    title: 'Seafood',
    image: 'assets/images/seafood.jpg',
   ),
   Category(
    id:'c4',
    // title: 'German',
    // image: 'assets/images/german.jpg'
    color: Colors.amber,
    title: 'Desert',
    image: 'assets/images/desert.jpg',
   ),
   Category(
    id:'c5',
    // title: 'Light & Lovely',
    color: Colors.blue,
    // image: 'assets/images/lovely-light1.jpg',
    title: 'Spicy',
    image: 'assets/images/spicy.jpg',
   ),
   Category(
    id:'c6',
    // title: 'Exotic',
    // image: 'assets/images/exotic.jpg'
    color: Colors.green,
    title: 'Meat',
    image: 'assets/images/meat.jpg',
   ),
   Category(
    id:'c7',
    // title: 'Breakfast',
    // image: 'assets/images/breakkfast.jpeg'
    color: Colors.lightBlue,
    title: 'Cakes',
    image: 'assets/images/cakes.jpg',
   ),
   Category(
    id:'c8',
    // title: 'Asian',
    // image: 'assets/images/asian.jpg',
    color: Colors.lightGreen,
    title: 'Snacks',
    image: 'assets/images/snacks.jpg',
   ),
   Category(
    id:'c9',
    // title: 'French',
    // image: 'assets/images/french.jpg'
    color: Colors.pink,
    title: 'Salad',
    image: 'assets/images/salad.jpg',
   ),
   Category(
    id:'c10',
    // title: 'Summer',
    // image: 'assets/images/summer.jpg'
    color: Colors.teal,
    title: 'Soups',
    image: 'assets/images/soup.jpg',
   ),
   Category(
    id:'c11',
    // title: 'Italian',
    color: Colors.purple,
    // image: 'assets/images/spaghatti.jpg',
    title: 'Briyani',
    image: 'assets/images/Biryani_Home.jpg',
   ),
   Category(
    id:'c12',
    // title: 'Italian',
    color: Colors.purple,
    // image: 'assets/images/spaghatti.jpg',
    title: 'Rice',
    image: 'assets/images/download.jpg',
   ),
];

// const DUMMY_RECIPES=const[
//   // CategoryRecipe(
//   //   id:'r1',
//   //   rid: 'c1',
//   //   // title: 'Italian',
//   //   color: Colors.purple,
//   //   // image: 'assets/images/spaghatti.jpg',
//   //   title: 'Andhra Style Chicken Curry',
//   //   image:
//   //       'https://www.spiceeats.com/wp-content/uploads/2020/01/Andhra-Chicken.jpg',
//   //  ),
//    CategoryRecipe(
//     id:'r2',
//     rid: 'c1',
//     // title: 'Quick & Easy',
//     color: Colors.red,
//     // image: 'assets/images/sandwitch.jpg',
//     title: 'Andhra Style Chicken Curry',
//     image: 'https://www.spiceeats.com/wp-content/uploads/2020/01/Andhra-Chicken.jpg',
//    ),
//    CategoryRecipe(
//     id:'r2',
//     rid: 'c1',
//     // title: 'Quick & Easy',
//     color: Colors.red,
//     // image: 'assets/images/sandwitch.jpg',
//     title: 'Avial Curry',
//     image: 'https://www.secondrecipe.com/wp-content/uploads/2017/09/avial.jpg',
//    ),
//    CategoryRecipe(
//     id:'r3',
//     rid:'c1',
//     // title: 'Hamburgers',
//     color: Colors.orange,
//     // image: 'assets/images/hamburgers.jpg',
//     title: 'Meen Murringakka Curry',
//     image: 'https://i.ndtvimg.com/i/2016-09/fish-curry_625x350_81475135071.jpg',
//    ),
//    CategoryRecipe(
//     id:'r4',
//     rid: 'c1',
//     // title: 'German',
//     // image: 'assets/images/german.jpg'
//     color: Colors.amber,
//     title: 'Butter Chicken',
//     image: 'https://static.toiimg.com/thumb/53205522.cms?imgsize=302803&width=800&height=800',
//    ),
//    CategoryRecipe(
//     id:'r5',
//     rid: 'c1',
//     // title: 'Light & Lovely',
//     color: Colors.blue,
//     // image: 'assets/images/lovely-light1.jpg',
//     title: 'Kori Gassi',
//     image: 'https://www.kannammacooks.com/wp-content/uploads/2015/10/Kori-Gassi-Mangalorean-Chicken-Curry.jpg',
//    ),
//    CategoryRecipe(
//     id:'r6',
//     rid: 'c1',
//     // title: 'Exotic',
//     // image: 'assets/images/exotic.jpg'
//     color: Colors.green,
//     title: 'Coorgi Gawti Chicken',
//     image: 'assets/images/meat.jpg',
//    ),
//    CategoryRecipe(
//     id:'r7',
//     rid: 'c1',
//     // title: 'Breakfast',
//     // image: 'assets/images/breakkfast.jpeg'
//     color: Colors.lightBlue,
//     title: 'Tikka Masala',
//     image: 'https://thecurrymommy.com/wp-content/uploads/2018/08/no-cream-chicken-tikka-masala.jpg',
//    ),
//    CategoryRecipe(
//     id:'r8',
//     rid: 'c1',
//     // title: 'Asian',
//     // image: 'assets/images/asian.jpg',
//     color: Colors.lightGreen,
//     title: 'Chicken Chettinad',
//     image: 'https://farm8.staticflickr.com/7890/46966041001_2590047365_o_d.jpg',
//    ),
//    CategoryRecipe(
//     id:'r9',
//     rid: 'c1',
//     // title: 'French',
//     // image: 'assets/images/french.jpg'
//     color: Colors.pink,
//     title: 'Kerala Prawn Curry',
//     image: 'https://www.thetakeiteasychef.com/wp-content/uploads/2018/06/Kerala-Prawn-Curry-Image.jpg',
//    ),
//    CategoryRecipe(
//     id:'r10',
//     rid: 'c1',
//     // title: 'Summer',
//     // image: 'assets/images/summer.jpg'
//     color: Colors.teal,
//     title: 'Sampar',
//     image: 'assets/images/soup.jpg',
//    ),
// ];

///list 1
const DUMMY_MEALS = const [
   Meal(
    id: 'm1',
    calories:'100',
    categories: 
      [
      'c1',
      ],
    title: 'Jeera Pepper Rasam',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/admin/Jeera_Milagu_Rasam_Recipe___South_Indian_Pepper_Cumin_Rasam.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
   Meal(
    id: 'm2',
    calories:'70',
    categories: 
      [
      'c1',
      ],
    title: 'Tomato Rasam',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn3.foodviva.com/static-content/food-images/south-indian-recipes/tomato-rasam/tomato-rasam.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
   Meal(
    id: 'm3',
    calories:'120',
    categories: 
      [
      'c1',
      ],
    title: 'Murringakka Sambhar',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.indianhealthyrecipes.com/wp-content/uploads/2012/07/drumstick-sambar-1.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
   Meal(
    id: 'm4',
    calories:'117',
    categories: 
      [
      'c1',
      ],
    title: 'Mullangi Sambhar',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.subbuskitchen.com/wp-content/uploads/2019/12/Radish-Sambar_finalforweb1-500x500.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm5',
    calories:'226',
    // rid:'c1',
    categories: 
      [
      'c1',
      ],
    title: 'Andhra Style Chicken Curry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.spiceeats.com/wp-content/uploads/2020/01/Andhra-Chicken.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,  
  ),
  Meal(
    id: 'm6',
    calories:'71',
    categories: 
      [
      'c1',
      ],
    title: 'Avial Curry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.secondrecipe.com/wp-content/uploads/2017/09/avial.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm7',
    calories:'694',
    categories: 
      [
      'c1',
      ],
    title: 'Meen Murringakka Curry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ndtvimg.com/i/2016-09/fish-curry_625x350_81475135071.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm8',
    calories:'600',
    categories: 
      [
      'c1',
      ],
    title: 'Butter Chicken',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://static.toiimg.com/thumb/53205522.cms?imgsize=302803&width=800&height=800',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm9',
    calories:'520',
    categories: 
      [
      'c1',
      ],
    title: 'Kori Gassi',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.kannammacooks.com/wp-content/uploads/2015/10/Kori-Gassi-Mangalorean-Chicken-Curry.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm10',
    calories:'372',
    categories: 
      [
      'c1',
      ],
    title: 'Coorgi Gawti Chicken',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ytimg.com/vi/2uVucZek8DU/hqdefault.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm11',
    categories: 
      [
      'c1',
      ],
    title: 'Tikka Masala',
    calories: '1249',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://thecurrymommy.com/wp-content/uploads/2018/08/no-cream-chicken-tikka-masala.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm12',
    calories:'265',
    categories: 
      [
      'c1',
      ],
    title: 'Chicken Chettinad',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://farm8.staticflickr.com/7890/46966041001_2590047365_o_d.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm13',
    calories:'114',
    categories: 
      [
      'c1','c3'
      ],
    title: 'Kerala Prawn Curry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.thetakeiteasychef.com/wp-content/uploads/2018/06/Kerala-Prawn-Curry-Image.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),

  //drinks
  Meal(
    id: 'm14',
    calories:'90',
    categories: [
      'c2',
    ],
    title: 'Hot Cocoa',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq3-5a9JXYAiyo1vnLnopIa0WWTYAmAYDKLg&usqp=CAU',
    duration: 10,
    ingredients: [
      '3\/4 cup sugar',
      '1\/2 cup unsweetened cocoa powder',
      '1 tsp vanilla extract',
      '4 cup milk',
      '4 oz chocolate, chopped fine'
    ],
    steps: [
      'Prepare mix ahead of time',
      'One serving is 1\/4 cup mix per cup of milk',
      'Bring milk to a simmer in a saucepan over medium heat. Whisk cocoa\/sugar mix into the milk',
      'Add the chopped chocolate and reduce heat to low and simmer, stirring, until the chocolate melts and the cocoa is thick, about 2 minutes',
      'Divide among mugs and garnish each with homemade marshmallows or whipped cream'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm15',
    calories:'110',
    categories: [
      'c2',
    ],
    title: 'Emeril\'s strawberry lemonade',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.recipegirl.com/wp-content/uploads/2007/04/Strawberry-Lemonade-2.jpg',
    duration: 15,
    ingredients: [
      '1 cup sugar',
      '2 cup water',
      '1 cup fresh lemon juice, (about 6 lemons=1 cup juice)',
      '1 lemon, sliced for serving',
      '1 pound strawberries, hulled and halved (about  cups)',
      '16 oz seltzer, chilled',
      'mint, for serving'
    ],
    steps: [
      'n a medium saucepan, bring water and sugar to a boil over medium-high.',
      ' Reduce to a simmer and cook, stirring occasionally, until sugar dissolves, 2 minutes.',
      'Transfer to a pitcher and refrigerated until cool, about 45 minutes',
      'Add lemon juice and stir to combine',
      'SIn a blender, puree strawberries until smooth. Pour through a fine-mesh sieve into a pitcher with lemon syrup, pressing on solid',
      'Stir well to combine',
      'To serve, stir in seltzer and divide among ice-filled glasses',
      'Trop with lemon slices and mint'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm16',
    calories:'80',
    categories: [
      'c2',
    ],
    title: 'Simple syrup',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnSqSbyFAIOiwvNSSf62-Bix4Ao6qqW2Ov4g&usqp=CAU',
    duration: 10,
    ingredients: [
      '1 cup sugar',
      '1 cup water',
    ],
    steps: [
      'Bring sugar and water to a boil in a small saucepan over high heats.',
      'Cook, stirring, until sugar dissolves, Let cool. Yields 1 cup.',
      'Storage: Can be refrigerated up to 1 month.',
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm17',
    calories:'133',
    categories: [
      'c2'
      //     'c5',
      // 'c10',
    ],
    title: 'Blood orange cocktails',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://marisamoore.com/wp-content/uploads/2019/01/Blood-Orange-Mocktail-in-Glass-Square.jpg',
    duration: 15,
    ingredients: [
      '1 1\/2 cup fresh blood orange juice',
      'from 7-8 blood oranges, chilled',
      '6 tablespoon Solerno or other blood orange liqueur',
    ],
    steps: [
      'Combine blood orange juice and liqueur in a large pitcher.',
      'Refrigerate for at least 30 minutes.',
      'Pour into test tubes (indigo.com) or small glasses.',
      'Cocktails can be refrigerated in pitcher overnight.',
      'Stir before using.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm18',
    calories:'406',
    categories: [
      'c2',
    ],
    title: 'Salted chocolate milk',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://iambaker.net/wp-content/uploads/2013/02/chocolatemilk-1200x1842.jpg',
    duration: 20,
    ingredients: [
      '1\/2 cup sugar',
      '1\/3 cup water',
      '1\/3 cup unsweetened cocoa powder',
      '1\/2 tsp vanilla extract',
      '6 cup cold milk',
      'Kosher salt',
    ],
    steps: [
      'Make the chocolate syrup: combine the sugar and water in a small saucepan',
      'Bring to a simmer over medium heat, then whisk in the cocoa powder until smooth',
      'Remove from the heat and stir in the vanilla. Let cool completely',
      'Spoon about 2.5 tbsp of the chocolate syrup into each glass.',
      'Add 1 1\/2 cups milk and a generous pinch of salt',
      'Stir until the syrup and salt dissolves.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm19',
    calories:'40',
    categories: [
      'c2',
    ],
    title: 'Lemonade',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/2586d951-a46a-4091-aec6-eca3adefb409.jpg',
    duration: 10,
    ingredients: [
      '1 cup sugar',
      '1 cup water',
      '6 lemons, juiced; peel one and cut the peel into strips',
      'mint and lemon slices for garnish',
    ],
    steps: [
      'In a small saucepan bring sugar and water to a boil, add peel and simmer for 5 minutes.',
      'Remove from heat, bring to room temperature and strain out peel.',
      'o a 2 quart pitcher add lemon juice, 1\/2 cup of the syrup, and 5 cups water.',
      'Stir, taste, and adjust ratio of water and syrup as desired.\r\n\r\nServe over ice, garnished with a mint sprig.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm20',
    calories:'550',
    categories: [
      'c2',
    ],
    title: 'PB&J smoothie',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://hips.hearstapps.com/del.h-cdn.co/assets/16/19/1462829465-pb-j.jpg',
    duration: 5,
    ingredients: [
      '1 cup milk',
      '1 banana',
      '2 tbsp peanut butter',
      '1\/4 cup flax meal',
      '2 tbsp jelly',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm21',
    calories:'220',
    categories: [
      'c2',
    ],
    title: 'Hot Nutty Irishman',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://silk.com/wp-content/uploads/2019/02/IrishCoffee_DT.jpg',
    duration: 15,
    ingredients: [
      '1 ounce Irish cream liqueur',
      '1 ounce Kahlua',
      '1 ounce Frangelico',
      '5 ounce hot coffee',
      'Whipped cream, for garnish',
      'Green sanding sugar, for garnish (optional)',
    ],
    steps: [
      'Place Irish cream, Frangelico, and Kahlua in a coffee mug.',
      'pour over coffee.',
      'Top with whipped cream and sanding sugar, if desired.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),


  //seafood
     Meal(                            
    id: 'm22',
    calories:'650',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Fish fry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.thetakeiteasychef.com/wp-content/uploads/2017/12/KFF-FI1-Compressed.jpg',
    duration: 15,
    ingredients:[
            "3 small carrots, quartered lengthwise\r",
            "1 medium red onion, thinly sliced\r",
            "1 tablespoon extra-virgin olive oil\r",
            "Kosher salt and freshly ground pepper\r",
            "<hr>\r",
            "4 6-ounce center-cut skinless halibut fillets (1 3\/4 inches thick)\r",
            "2 tablespoon extra-virgin olive oil\r",
            "1\/2 teaspoon smoked paprika\r",
            "<hr>\r",
            "10 ounce frozen peas\r",
            "1\/4 cup water\r",
            "1\/3 cup ricotta cheese\r",
            "1 tablespoon unsalted butter"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
     Meal(                            
    id: 'm23',
    calories:'277',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Prawn fry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://3.bp.blogspot.com/-qkJKG0b_DHc/WG2nfTITIvI/AAAAAAAACPs/yCHxpk1R34w1lSBUYxuGqySkPT1BcEuLwCLcB/s1600/prawns%2Bfry%2Brecipe.JPG',
    duration: 15,
    ingredients:[
            "3 small carrots, quartered lengthwise\r",
            "1 medium red onion, thinly sliced\r",
            "1 tablespoon extra-virgin olive oil\r",
            "Kosher salt and freshly ground pepper\r",
            "<hr>\r",
            "4 6-ounce center-cut skinless halibut fillets (1 3\/4 inches thick)\r",
            "2 tablespoon extra-virgin olive oil\r",
            "1\/2 teaspoon smoked paprika\r",
            "<hr>\r",
            "10 ounce frozen peas\r",
            "1\/4 cup water\r",
            "1\/3 cup ricotta cheese\r",
            "1 tablespoon unsalted butter"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm24',
    calories:'135.4',
    categories: [
      'c3',
      // 'c5',
      // 'c10',
    ],
    title: 'Baked Shrimp Scampi',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://dinnerthendessert.com/wp-content/uploads/2018/09/Shrimp-Scampi-4.jpg',
    duration: 45,
    ingredients: [
            "2\/3 cup panko\r",
            "1\/4 teaspoon red pepper flakes\r",
            "1\/2 lemon, zested and juiced\r",
            "1 extra-large egg yolk\r",
            "1 teaspoon rosemary, minced\r",
            "3 tablespoon parsley, minced\r",
            "4 clove garlic, minced\r",
            "1\/4 cup shallots, minced\r",
            "8 tablespoon unsalted butter, at room temperature\r",
            "2 tablespoon dry white wine\r",
            "Freshly ground black pepper\r",
            "Kosher salt\r",
            "3 tablespoon olive oil\r",
            "2 pound frozen shrimp"
    ],
    steps: [
      'Preheat the oven to 425 degrees',
      'Defrost shrimp by putting in cold water, drain.',
      'lace the shrimp in serving dish (9x13 or 2 quart casserole) and toss gently with the olive oil, wine, 1 teaspoons salt, and 1 teaspoon pepper.',
      'Allow to sit at room temperature while you make the butter and garlic mixture.\r\n\r\nIn a small bowl, mash the softened butter with the garlic, shallots, parsley, rosemary, red pepper flakes, lemon zest, lemon juice, egg yolk, panko, 1\/2 teaspoon salt, and 1\/4 teaspoon of pepper until combined.',
      'Spread the butter mixture evenly over the shrimp. Bake for 10 to 12 minutes until hot and bubbly',
      'If you like the top browned, place under a broiler for 1-3 minutes (keep an eye on it).',
      'Serve with lemon wedges and French bread.',
      'Starting from the outer edge of a 14-inch oval gratin dish, arrange the shrimp in a single layer cut side down with the tails curling up and towards the center of the dish. Pour the remaining marinade over the shrimp.',
    ],
    isGlutentFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
   Meal(                            
    id: 'm25',
    calories:'117',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Smoked Salmon Ebelskivers',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://delicerecipes.com/wp-content/uploads/2020/07/Danish-Smorrebrod-Salmon-2.jpg',
    duration: 20,
    ingredients: [
            "1 cup all-purpose flour\r",
            "1 1\/2 tsp sugar\r",
            "1\/2 tsp baking powder\r",
            "1\/4 tsp salt\r",
            "1\/2 tsp pepper, freshly ground\r",
            "2 large eggs, separated\r",
            "1 cup milk\r",
            "3 tbsp unsalted butter, melted and slightly cooled, divided use\r",
            "1 tsp fresh lemon juice\r",
            "1\/4 cup fresh dill, chopped and firmly packed\r",
            "3 1\/2 tbsp smoked salmon, minced (about 4 oz)\r",
            "3 1\/2 tbsp whipped-style cream cheese, at room temperature\r",
            "2 servings [cocktail sauce](http:\/\/www.xanthir.com\/recipes\/showrecipe.php?id=id50)"
        ],
    steps: [
      'Preheat oven to 200F.\r\n\r\nIn a large bowl, whisk together the flour, sugar, baking powder, salt, and pepper.',
      'In a small bowl, lightly whisk the egg yolks, then whisk in the milk, 2 tablespoons of melted butter and lemon juice.',
      'Add the yolk mixture to the flour mixture and, using a wooden spoon, stir until well blended.',
      'The batter will be lumpy.\r\n\r\nIn a clean bowl, using an electric mixer on high speed, beat the egg whites until stiff, but not dry, peaks form.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm26',
    calories:'117',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Roasted Salmon with Walnut-Pepper Relish',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        '	https://d1yfn1dfres2va.cloudfront.net/001/a4/8c/a48c3d0e7d209b5cf77dcb4c700c08ef_250x250.jpg',
    duration: 40,
    ingredients: [
            "1\/2 cup walnuts\r",
            "Pinch of cayenne pepper\r",
            "1 tbsp lemon juice\r",
            "1 tsp honey\r",
            "2 tbsp diced roasted red pepper\r",
            "1 tbsp walnut oil\r",
            "1 tbsp extra-virgin olive oil\r",
            "2 tbsp parsley, chopped\r",
            "1\/2 tsp salt\r",
            "black pepper\r",
            "<hr>\r",
            "1 tbsp extra-virgin olive oil\r",
            "2 tbsp parsley, chopped\r",
            "2 tbsp chives, chopped\r",
            "1 tsp lemon zest\r",
            "1\/2 tsp salt\r",
            "black pepper\r",
            "2 lb salmon filet (about 1.5 inches thick)"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm27',
    calories:'252.3',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Shrimp and edamame with lime',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://assets.marthastewart.com/styles/wmax-300/d31/shrimp-edamame-0611med107092lgt/shrimp-edamame-0611med107092lgt_hd.jpg?itok=aSVhI0th',
    duration: 20,
    ingredients:[
            "1 cup long-grain rice, such as jasmine or basmati\r",
            "1 tbsp extra-virgin olive oil\r",
            "1 1\/4 lb medium shrimp, peeled and deveined\r",
            "1 large clove garlic, minced\r",
            "2 cup frozen shelled edamame, thawed (from a 10 oz package)\r",
            "5 green onions, halved lengthwise and cut into 1-inch pieces, white and green parts separated\r",
            "1 tbsp fresh lime juice, plus wedges for serving (optional)\r",
            "salt and freshly ground pepper"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm28',
    calories:'171',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Japanese style grilled salmon',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://img-global.cpcdn.com/recipes/6578108149792768/1200x630cq70/photo.jpg',
    duration: 24,
    ingredients:[
            "4 (5-ounce) salmon fillets\r",
            "1\/2 teaspoon salt\r",
            "<hr>\r",
            "1\/4 cup soy sauce\r",
            "1\/4 cup sake or dry white wine, sake is preferred\r",
            "1\/4 cup mirin\r",
            "2 tablespoon sugar\r",
            "2 green onions, chopped\r",
            "3 tablespoon ginger, chopped\r",
            "1 small lemon, thinly sliced\r",
            "4 servings [Soba Noodle Salad]"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm29',
    calories:'419.3',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Grilled salmon gyros',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.pinimg.com/474x/67/56/89/67568950699e7910f954109e119c8806.jpg',
    duration: 37,
    ingredients:[
            "2 teaspoon oregano, chopped\r",
            "1 clove garlic, mashed into paste with pinch kosher salt\r",
            "1 teaspoon freshly cracked black pepper\r",
            "3 tablespoon grapeseed oil\r",
            "1\/2 teaspoon hot pepper flakes\r",
            "1 teaspoon lemon zest\r",
            "4 tablespoon lemon juice\r",
            "4 (6-ounce) fresh skinless salmon fillets (wild preferred)\r",
            "8 pita breads\r",
            "2 cup iceberg lettuce (optional), shredded\r",
            "<hr>\r",
            "3 cup tomatoes, seeded and diced\r",
            "3\/4 cup red onion, quartered and thinly sliced\r",
            "1 teaspoon garlic paste\r",
            "1 teaspoon balsamic vinegar\r",
            "1\/2 teaspoon lemon zest\r",
            "2 tablespoon lemon juice\r",
            "1 teaspoon oregano, chopped\r",
            "1\/2 teaspoon freshly cracked black pepper\r",
            "1\/2 teaspoon kosher salt\r",
            "1 1\/2 tablespoon grapeseed oil\r",
            "<hr>\r",
            "1 cup Greek yogurt\r",
            "1 1\/2 cup English cucumber, peeled, seeded, finely diced\r",
            "1 1\/2 tablespoon dill, chopped\r",
            "1 1\/2 tablespoon garlic, minced\r",
            "1 teaspoon lemon zest\r",
            "1 tablespoon lemon juice\r",
            "1\/2 teaspoon freshly cracked black pepper\r",
            "1\/2 teaspoon kosher salt"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm30',
    calories:'385',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Grilled salmon sushi rice bowl',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://image.freepik.com/free-photo/grilled-salmon-topped-rice-bowl-donburi_1339-93378.jpg',
    duration: 20,
    ingredients:[
            "1 tablespoon wasabi powder\r",
            "2 tablespoon water\r",
            "4 servings [Homemade Ponzu Sauce](http:\/\/www.xanthir.com\/recipes\/showrecipe.php?id=id157)",
            "1\/4 cup sake\r",
            "2 tablespoon grated ginger\r",
            "<hr>",
            "1 pound center-cut salmon fillet, cut into 4 equal pieces\r",
            "12 ounce asparagus, ends trimmed\r",
            "2 tablespoon vegetable oil\r",
            "<hr>",
            "4 teaspoon sesame seeds\r",
            "4 servings [Sushi Rice](http:\/\/www.xanthir.com\/recipes\/showrecipe.php?id=id158)",
            "2 teaspoon sesame oil\r",
            "3 green onions, chopped\r",
            "1 avocado, pitted, peeled, and cut into 1\/2-inch cubes\r",
            "1 English cucumber, cut into matchstick-sized strips\r",
            "1\/4 cup sliced pickled ginger"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm31',
    calories:'380',
    // rid:'c1',
    categories: 
      [
      'c3',
      'c1'
      ],
    title: 'Fish Curry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.whiskaffair.com/wp-content/uploads/2020/10/Goan-Fish-Curry-2-3.jpg',
    duration: 20,
    ingredients:[
            "1 cup all-purpose flour\r",
            "1 1\/2 tsp sugar\r",
            "1\/2 tsp baking powder\r",
            "1\/4 tsp salt\r",
            "1\/2 tsp pepper, freshly ground\r",
            "2 large eggs, separated\r",
            "1 cup milk\r",
            "3 tbsp unsalted butter, melted and slightly cooled, divided use\r",
            "1 tsp fresh lemon juice\r",
            "1\/4 cup fresh dill, chopped and firmly packed\r",
            "3 1\/2 tbsp smoked salmon, minced (about 4 oz)\r",
            "3 1\/2 tbsp whipped-style cream cheese, at room temperature\r",
            "2 servings [cocktail sauce]"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(                            
    id: 'm32',
    calories:'329',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Shrimp fried rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://30minutesmeals.com/wp-content/uploads/2019/12/Shrimp-Fried-Rice-Recipe-3.jpg',
    duration: 20,
    ingredients:[
            "8 ounce small raw shrimp, shelled and deveined\r",
            "1\/2 teaspoon kosher salt\r",
            "freshly ground black pepper\r",
            "1\/2 teaspoon cornstarch\r",
            "2 tablespoon cooking oil, divided\r",
            "3 eggs, beaten\r",
            "2 green onions, minced\r",
            "4 cup leftover rice, grains separated well\r",
            "3\/4 cup frozen peas and carrots, defrosted\r",
            "1 tablespoon soy sauce, (use gluten-free soy sauce if you are making a gluten-free version)\r",
            "1 teaspoon sesame oil"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
    Meal(                            
    id: 'm33',
    calories:'464.3',
    // rid:'c1',
    categories: 
      [
      'c3',
      ],
    title: 'Broiled halibut with ricotta-pea puree',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
      
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/6/9/3/FNM_070115-Broiled-Halibut-with-Summer-Herbs-Recipe_s4x3.jpg.rend.hgtvcom.616.462.suffix/1433948453715.jpeg',
    duration: 20,
    ingredients:[
            "3 small carrots, quartered lengthwise\r",
            "1 medium red onion, thinly sliced\r",
            "1 tablespoon extra-virgin olive oil\r",
            "Kosher salt and freshly ground pepper\r",
            "<hr>\r",
            "4 6-ounce center-cut skinless halibut fillets (1 3\/4 inches thick)\r",
            "2 tablespoon extra-virgin olive oil\r",
            "1\/2 teaspoon smoked paprika\r",
            "<hr>\r",
            "10 ounce frozen peas\r",
            "1\/4 cup water\r",
            "1\/3 cup ricotta cheese\r",
            "1 tablespoon unsalted butter"
        ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),


//desert
 Meal(
    id: 'm34',
    calories:'200',
    categories: [
      'c4',
    ],
    title: 'Strawberries Romanov',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.pinimg.com/originals/9a/83/3d/9a833d96b5ee920904303294fe54f80c.jpg',
    duration: 5,
    ingredients:[
            "2 tbsp powdered sugar\r",
            "1\/2 pt heavy whipping cream\r",
            "1 lb strawberries, (2 pints)\r",
            "4 tbsp brandy"
        ],
    steps: [
      'Prepare mix ahead of time',
      'One serving is 1\/4 cup mix per cup of milk',
      'Bring milk to a simmer in a saucepan over medium heat. Whisk cocoa\/sugar mix into the milk',
      'Add the chopped chocolate and reduce heat to low and simmer, stirring, until the chocolate melts and the cocoa is thick, about 2 minutes',
      'Divide among mugs and garnish each with homemade marshmallows or whipped cream'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm35',
    calories:'550',
    categories: [
      'c4',
    ],
    title: 'John Thorne\'s Pecan Pie',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ytimg.com/vi/pvsPSDfyUwk/mqdefault.jpg',
    duration: 60,
    ingredients: [
            "1\/4 tsp salt \r",
            "3 eggs \r",
            "4 tbsp butter \r",
            "2 tbsp dark rum \r",
            "2\/3 cup golden syrup \r",
            "1 cup dark brown sugar, well-packed\r",
            "2 cup pecans, chopped \r",
            "9-inch unbaked pie shell"
        ],
    steps: [
      'n a medium saucepan, bring water and sugar to a boil over medium-high.',
      ' Reduce to a simmer and cook, stirring occasionally, until sugar dissolves, 2 minutes.',
      'Transfer to a pitcher and refrigerated until cool, about 45 minutes',
      'Add lemon juice and stir to combine',
      'SIn a blender, puree strawberries until smooth. Pour through a fine-mesh sieve into a pitcher with lemon syrup, pressing on solid',
      'Stir well to combine',
      'To serve, stir in seltzer and divide among ice-filled glasses',
      'Trop with lemon slices and mint'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm36',
    calories:'326',
    categories: [
      'c4',
    ],
    title: 'Godiva Angel Pie',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.yourhomebasedmom.com/wp-content/uploads/2017/04/Chocolate-Angel-Pie_0007.jpg',
    duration: 60,
    ingredients: [
            "4 (1 oz.) squares Godiva cooking chocolate or 4 oz. Baker's German sweet chocolate\r",
            "1\/2 tsp vanilla\r",
            "1 cup pecans, finely chopped\r",
            "1\/2 cup sugar\r",
            "1\/8 tsp cream of tartar\r",
            "1\/8 tsp salt\r",
            "2 egg whites, at room temperature\r",
            "3 tbsp water\r",
            "1 tsp vanilla\r",
            "1 cup heavy cream, whipped"
        ],
    steps: [
      'Bring sugar and water to a boil in a small saucepan over high heats.',
      'Cook, stirring, until sugar dissolves, Let cool. Yields 1 cup.',
      'Storage: Can be refrigerated up to 1 month.',
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm37',
    calories:'582.8',
    categories: [
      'c4'
      //     'c5',
      // 'c10',
    ],
    title: 'Onion Pie',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/exps30362_LR153742D09_11_2b.jpg',
    duration: 65,
    ingredients: [
            "1\/2 cup grated Parmesan cheese\r",
            "1\/2 stack Keebler Club Crackers, crushed\r",
            "2 eggs\r",
            "1 cup milk\r",
            "1\/2 teaspoon crushed red pepper flakes, or to taste\r",
            "1\/2 cup butter, divided use\r",
            "3 large onions"
        ],
    steps: [
      'Combine blood orange juice and liqueur in a large pitcher.',
      'Refrigerate for at least 30 minutes.',
      'Pour into test tubes (indigo.com) or small glasses.',
      'Cocktails can be refrigerated in pitcher overnight.',
      'Stir before using.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm38',
    calories:'860',
    categories: [
      'c4',
    ],
    title: 'Godiva Dark Chocolate Cheesecake',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.schengendesserts.com/wp-content/uploads/2020/08/godiva-double-chocolate-cheesecake-main.jpg',
    duration: 80,
    ingredients: [
            "2 1\/2 cup cream cheese, room temperature\r",
            "1\/2 cup sugar\r",
            "1 3\/4 tablespoon cocoa powder\r",
            "5 tablespoon Godiva 85% Dark Chocolate Callets\r",
            "2 eggs\r",
            "2 egg yolks\r",
            "1 3\/4 tablespoon cr\u00e8me faiche"
        ],
    steps: [
      'Make the chocolate syrup: combine the sugar and water in a small saucepan',
      'Bring to a simmer over medium heat, then whisk in the cocoa powder until smooth',
      'Remove from the heat and stir in the vanilla. Let cool completely',
      'Spoon about 2.5 tbsp of the chocolate syrup into each glass.',
      'Add 1 1\/2 cups milk and a generous pinch of salt',
      'Stir until the syrup and salt dissolves.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm39',
    calories:'128',
    categories: [
      'c4',
    ],
    title: 'Greek yogurt with homemade honeycomb',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.pinimg.com/originals/d4/f6/58/d4f6581daa2262a7c489acb167a3e4de.jpg',
    duration: 70,
    ingredients: [
            "600 ml Greek yogurt\r",
            "100 g blueberries\r",
            "100 g raspberries\r",
            "2 tsp caster sugar\r",
            "Lavender essence, suitable for culinary use\r",
            "Dried lavender flowers, suitable for culinary use\r",
            "75 g clear honey\r",
            "140 g liquid glucose\r",
            "400 g sugar\r",
            "5 tbsp water\r",
            "2 tbsp baking powder"
        ],
    steps: [
      'In a small saucepan bring sugar and water to a boil, add peel and simmer for 5 minutes.',
      'Remove from heat, bring to room temperature and strain out peel.',
      'o a 2 quart pitcher add lemon juice, 1\/2 cup of the syrup, and 5 cups water.',
      'Stir, taste, and adjust ratio of water and syrup as desired.\r\n\r\nServe over ice, garnished with a mint sprig.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm40',
    calories:'54.2',
    categories: [
      'c4',
    ],
    title: 'Cherry-lime cups',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://i.pinimg.com/474x/5b/7d/47/5b7d47781f85e000a2365af4fc7f4e8d.jpg',
    duration: 60,
    ingredients: [
            "7 tbsp unsalted butter, cold and cut into pieces, plus more for pan\r",
            "1 1\/3 cup all-purpose flour, spooned and leveled\r",
            "1\/4 cup sugar\r",
            "1\/2 tsp coarse salt\r",
            "2 egg yolks\r",
            "1\/2 tsp vanilla extract\r",
            "<hr>\r",
            "2 eggs, lightly beaten\r",
            "3 tbsp all-purpose flour\r",
            "2\/3 cup sugar\r",
            "5 tbsp fresh lime juice\r",
            "1\/4 tsp coarse salt\r",
            "9 cherries, halved and pitted"
        ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm41',
    calories:'90',
    categories: [
      'c4',
    ],
    title: 'Strawberries and cream bars',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.twopeasandtheirpod.com/wp-content/uploads/2016/04/Strawberries-and-Cream-Bars-1.jpg',
    duration: 45,
    ingredients: [
            "2 lb strawberries, hulled, halved if large (6 cups)\r",
            "1 1\/2 cup sugar\r",
            "coarse salt\r",
            "7 egg whites\r",
            "2\/3 cup cold heavy cream\r",
            "1 tsp vanilla extract"
        ],
    steps: [
      'Place Irish cream, Frangelico, and Kahlua in a coffee mug.',
      'pour over coffee.',
      'Top with whipped cream and sanding sugar, if desired.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),


//spicy
 Meal(
    id: 'm42',
    calories:'357',
    categories: [
      'c5',
    ],
    title: 'Peppers With Pizazz',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images.eatsmarter.com/sites/default/files/styles/max_size/public/pizza-with-chicken-and-peppers-537682.jpg',
    duration: 60,
    ingredients: [
      '3\/4 cup sugar',
      '1\/2 cup unsweetened cocoa powder',
      '1 tsp vanilla extract',
      '4 cup milk',
      '4 oz chocolate, chopped fine'
    ],
    steps: [
      'Prepare mix ahead of time',
      'One serving is 1\/4 cup mix per cup of milk',
      'Bring milk to a simmer in a saucepan over medium heat. Whisk cocoa\/sugar mix into the milk',
      'Add the chopped chocolate and reduce heat to low and simmer, stirring, until the chocolate melts and the cocoa is thick, about 2 minutes',
      'Divide among mugs and garnish each with homemade marshmallows or whipped cream'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm43',
    calories:'10',
    categories: [
      'c5',
    ],
    title: 'Garlic is Zesty',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://media1.popsugar-assets.com/files/thumbor/pO8LbxU22x65MIMxv1ymqknBIvs/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2021/04/27/148/n/47737404/tmp_7jNX5e_a804d010e0fca67d_DSC01694.jpg',
    duration: 45,
    ingredients: [
      '1 cup sugar',
      '2 cup water',
      '1 cup fresh lemon juice, (about 6 lemons=1 cup juice)',
      '1 lemon, sliced for serving',
      '1 pound strawberries, hulled and halved (about  cups)',
      '16 oz seltzer, chilled',
      'mint, for serving'
    ],
    steps: [
      'n a medium saucepan, bring water and sugar to a boil over medium-high.',
      ' Reduce to a simmer and cook, stirring occasionally, until sugar dissolves, 2 minutes.',
      'Transfer to a pitcher and refrigerated until cool, about 45 minutes',
      'Add lemon juice and stir to combine',
      'SIn a blender, puree strawberries until smooth. Pour through a fine-mesh sieve into a pitcher with lemon syrup, pressing on solid',
      'Stir well to combine',
      'To serve, stir in seltzer and divide among ice-filled glasses',
      'Trop with lemon slices and mint'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    calories:'78',
    categories: [
      'c5',
    ],
    title: 'Mango Pickle',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.indianhealthyrecipes.com/wp-content/uploads/2015/03/mango-pickle-recipe-9-500x500.jpg',
    duration: 60,
    ingredients: [
      '1 cup sugar',
      '1 cup water',
    ],
    steps: [
      'Bring sugar and water to a boil in a small saucepan over high heats.',
      'Cook, stirring, until sugar dissolves, Let cool. Yields 1 cup.',
      'Storage: Can be refrigerated up to 1 month.',
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm44',
    calories:'520',
    categories: [
      'c5'
      //     'c5',
      // 'c10',
    ],
    title: 'Jalapeño Popper Burgers',
    // description:'Big burgers stuffed with cream cheese and diced jalapeños and topped with a whole roasted jalapeño. Spicy and wonderful!',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/d657497e-4c20-4f87-bd12-4cde1502ccae.jpg',
    duration: 15,
    ingredients: [
      '1 pound ground beef',
      '1 jalapeño, diced',
      '3 ounces cream cheese',
      '3 jalapeños roasted, peeled, seeded',
      '1\/2 cup shredded cheddar cheese',
      '3 hamburger buns',
      'Salt and pepper'
    ],
    steps: [
      'Dice one fresh jalapeño finely. You can remove the seeds or leave them in for extra heat. Mix diced jalapeño with cream cheese.',
      'Refrigerate for at least 30 minutes.',
      'Pour into test tubes (indigo.com) or small glasses.',
      'Cocktails can be refrigerated in pitcher overnight.',
      'Stir before using.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm45',
    calories:'293.6',
    categories: [
      'c5',
    ],
    title: 'Spicy Shrimp Pasta Salad',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/8a9e5c5c-16f9-41a9-8e6e-718d12bae7e3.jpg',
    duration: 240,
    ingredients: [
      '1\/2 cup sugar',
      '1\/3 cup water',
      '1\/3 cup unsweetened cocoa powder',
      '1\/2 tsp vanilla extract',
      '6 cup cold milk',
      'Kosher salt',
    ],
    steps: [
      'Make the chocolate syrup: combine the sugar and water in a small saucepan',
      'Bring to a simmer over medium heat, then whisk in the cocoa powder until smooth',
      'Remove from the heat and stir in the vanilla. Let cool completely',
      'Spoon about 2.5 tbsp of the chocolate syrup into each glass.',
      'Add 1 1\/2 cups milk and a generous pinch of salt',
      'Stir until the syrup and salt dissolves.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm46',
    calories:'480',
    categories: [
      'c5',
      'c9'
    ],
    title: 'Spicy Mexican Pasta Salad',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/1eab29e6-e62e-426a-b664-b2c72088481c.jpg',
    duration: 10,
    ingredients: [
      '1 cup sugar',
      '1 cup water',
      '6 lemons, juiced; peel one and cut the peel into strips',
      'mint and lemon slices for garnish',
    ],
    steps: [
      'In a small saucepan bring sugar and water to a boil, add peel and simmer for 5 minutes.',
      'Remove from heat, bring to room temperature and strain out peel.',
      'o a 2 quart pitcher add lemon juice, 1\/2 cup of the syrup, and 5 cups water.',
      'Stir, taste, and adjust ratio of water and syrup as desired.\r\n\r\nServe over ice, garnished with a mint sprig.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm47',
    calories:'75',
    categories: [
      'c5',
    ],
    title: 'Gochujang Mayonnaise',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/01180e6c-8d54-4b93-96e5-88c4b2cd8b45.jpg',
    duration: 35,
    ingredients: [
      '1 cup milk',
      '1 banana',
      '2 tbsp peanut butter',
      '1\/4 cup flax meal',
      '2 tbsp jelly',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm48',
    calories:'190',
    categories: [
      'c5',
    ],
    title: 'Black Bean and Corn Jalapeño Poppers',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/a2dfa61a-20f1-4b33-a94d-eaca2f5fb6fb.jpg',
    duration: 25,
    ingredients: [
      '1 ounce Irish cream liqueur',
      '1 ounce Kahlua',
      '1 ounce Frangelico',
      '5 ounce hot coffee',
      'Whipped cream, for garnish',
      'Green sanding sugar, for garnish (optional)',
    ],
    steps: [
      'Place Irish cream, Frangelico, and Kahlua in a coffee mug.',
      'pour over coffee.',
      'Top with whipped cream and sanding sugar, if desired.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

//meat
 Meal(
    id: 'm49',
    calories:'335',
    categories: [
      'c6',
      'c5'
    ],
    title: 'Spicy Meatball Foil Packs',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/514538d3-af50-4184-a104-2fd1608007c5.jpg',
    duration: 20,
    ingredients: [
      '3\/4 cup sugar',
      '1\/2 cup unsweetened cocoa powder',
      '1 tsp vanilla extract',
      '4 cup milk',
      '4 oz chocolate, chopped fine'
    ],
    steps: [
      'Prepare mix ahead of time',
      'One serving is 1\/4 cup mix per cup of milk',
      'Bring milk to a simmer in a saucepan over medium heat. Whisk cocoa\/sugar mix into the milk',
      'Add the chopped chocolate and reduce heat to low and simmer, stirring, until the chocolate melts and the cocoa is thick, about 2 minutes',
      'Divide among mugs and garnish each with homemade marshmallows or whipped cream'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm50',
    calories:'1261',
    categories: [
      'c6',
      'c5'
    ],
    title: 'Grilled Chicken with Spicy Strawberry BBQ Sauce',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/470dcd09-42bc-4a7b-803a-d4ea2cfac752.jpg',
    duration: 15,
    ingredients: [
      '1 cup sugar',
      '2 cup water',
      '1 cup fresh lemon juice, (about 6 lemons=1 cup juice)',
      '1 lemon, sliced for serving',
      '1 pound strawberries, hulled and halved (about  cups)',
      '16 oz seltzer, chilled',
      'mint, for serving'
    ],
    steps: [
      'n a medium saucepan, bring water and sugar to a boil over medium-high.',
      ' Reduce to a simmer and cook, stirring occasionally, until sugar dissolves, 2 minutes.',
      'Transfer to a pitcher and refrigerated until cool, about 45 minutes',
      'Add lemon juice and stir to combine',
      'SIn a blender, puree strawberries until smooth. Pour through a fine-mesh sieve into a pitcher with lemon syrup, pressing on solid',
      'Stir well to combine',
      'To serve, stir in seltzer and divide among ice-filled glasses',
      'Trop with lemon slices and mint'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm51',
    calories:'460',
    categories: [
      'c6',
      'c5'
    ],
    title: 'Spicy Southern Chicken Biscuits',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/8a5b3af1-8a1a-49b9-a777-4da18c129521.jpg',
    duration: 20,
    ingredients: [
      '1 cup sugar',
      '1 cup water',
    ],
    steps: [
      'Bring sugar and water to a boil in a small saucepan over high heats.',
      'Cook, stirring, until sugar dissolves, Let cool. Yields 1 cup.',
      'Storage: Can be refrigerated up to 1 month.',
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm52',
    calories:'1340',
    categories: [
      'c6'
      //     'c5',
      // 'c10',
    ],
    title: 'Southern Fried Chicken Biscuit Sandwiches',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images-gmi-pmc.edge-generalmills.com/2e142e0f-fde3-49dd-a09a-ac80330a3db5.jpg',
    duration: 60,
    ingredients: [
      '1 1\/2 cup fresh blood orange juice',
      'from 7-8 blood oranges, chilled',
      '6 tablespoon Solerno or other blood orange liqueur',
    ],
    steps: [
      'Combine blood orange juice and liqueur in a large pitcher.',
      'Refrigerate for at least 30 minutes.',
      'Pour into test tubes (indigo.com) or small glasses.',
      'Cocktails can be refrigerated in pitcher overnight.',
      'Stir before using.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm53',
    calories:'271',
    categories: [
      'c6',
      'c1'
    ],
    title: 'Military Mutton Curry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://c.ndtvimg.com/2021-12/sooa3dh8_mutton_240x180_11_December_21.jpg',
    duration: 20,
    ingredients: [
      '1\/2 cup sugar',
      '1\/3 cup water',
      '1\/3 cup unsweetened cocoa powder',
      '1\/2 tsp vanilla extract',
      '6 cup cold milk',
      'Kosher salt',
    ],
    steps: [
      'Make the chocolate syrup: combine the sugar and water in a small saucepan',
      'Bring to a simmer over medium heat, then whisk in the cocoa powder until smooth',
      'Remove from the heat and stir in the vanilla. Let cool completely',
      'Spoon about 2.5 tbsp of the chocolate syrup into each glass.',
      'Add 1 1\/2 cups milk and a generous pinch of salt',
      'Stir until the syrup and salt dissolves.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm54',
    calories:'170',
    categories: [
      'c6',
    ],
    title: 'Mutton Spring Roll',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        '	https://c.ndtvimg.com/2020-07/8qt1ij4o_spring-rolls_120x90_13_July_20.jpg',
    duration: 15,
    ingredients: [
      '1 cup sugar',
      '1 cup water',
      '6 lemons, juiced; peel one and cut the peel into strips',
      'mint and lemon slices for garnish',
    ],
    steps: [
      'In a small saucepan bring sugar and water to a boil, add peel and simmer for 5 minutes.',
      'Remove from heat, bring to room temperature and strain out peel.',
      'o a 2 quart pitcher add lemon juice, 1\/2 cup of the syrup, and 5 cups water.',
      'Stir, taste, and adjust ratio of water and syrup as desired.\r\n\r\nServe over ice, garnished with a mint sprig.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm55',
    calories:'235',
    categories: [
      'c6',
    ],
    title: 'keema naan',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://c.ndtvimg.com/2021-02/2eop30rg_garlic-naan_120x90_16_February_21.jpg',
    duration: 20,
    ingredients: [
      '1 cup milk',
      '1 banana',
      '2 tbsp peanut butter',
      '1\/4 cup flax meal',
      '2 tbsp jelly',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm56',
    calories:'265',
    categories: [
      'c6',
    ],
    title: 'Coriander Mutton Fry',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://c.ndtvimg.com/2021-12/sooa3dh8_mutton_240x180_11_December_21.jpg',
    duration: 20,
    ingredients: [
      '1 ounce Irish cream liqueur',
      '1 ounce Kahlua',
      '1 ounce Frangelico',
      '5 ounce hot coffee',
      'Whipped cream, for garnish',
      'Green sanding sugar, for garnish (optional)',
    ],
    steps: [
      'Place Irish cream, Frangelico, and Kahlua in a coffee mug.',
      'pour over coffee.',
      'Top with whipped cream and sanding sugar, if desired.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

//cakes
 Meal(
    id: 'm57',
    calories:'113',
    categories: [
      'c7',
    ],
    title: 'Salted caramel six layer chocolate cake',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=750&h=375&url=https%3A%2F%2Fassets.marthastewart.com%2Fstyles%2Fwmax-750%2Fd47%2Fsalted-caramel-six-layer-chocolate-cake-d107719%2Fsalted-caramel-six-layer-chocolate-cake-d107719_horiz.jpg%3Fitok%3DVx0wJGLY',
    duration: 370,
    ingredients: [
            "Unsalted butter, room temperature, for pans\r",
            "3 cup all-purpose flour, plus more for pans\r",
            "3 cup granulated sugar\r",
            "1 1\/2 cup unsweetened Dutch-process cocoa powder\r",
            "1 tbsp baking soda\r",
            "1 1\/2 tsp baking powder\r",
            "Salt\r",
            "4 large eggs 1 1\/2 cups buttermilk\r",
            "1 1\/2 cup warm water\r",
            "5\/8 cup safflower oil, 1\/2 cup plus 2 tbsp\r",
            "2 tsp pure vanilla extract\r",
            "<hr>",
            "4 cup granulated sugar\r",
            "1\/4 cup light corn syrup\r",
            "1\/4 cup water\r",
            "2 cup heavy cream\r",
            "Salt\r",
            "2 stick unsalted butter, cold, cut into tablespoons\r",
            "<hr>",
            "3\/8 cup Dutch-process cocoa powder, 1\/4 cup plus 2 tbsp\r",
            "3\/8 cup warm water\r",
            "2 stick unsalted butter, room temperature\r",
            "1\/2 cup confectioners' sugar\r",
            "Salt\r",
            "1 lb semisweet chocolate, chopped, melted, and cooled\r",
            "Flaked sea salt, such as Maldon, for garnish"
        ],
        steps: [
          "Preheat oven to 350F. Make the cake: butter three 9-inch round cake pans, and dust with flour, tapping out excess. Sift flour, granulated sugar, cocoa, baking soda, baking powder, and 1 1\/2 teaspoons salt into the bowl of a mixer. Beat on low speed until just combined. Raise speed to medium and add eggs, buttermilk, warm water, oil, and vanilla. Beat until smooth, about 3 minutes.\r\n\r\n2. Divide batter among pans. Bake until cakes are set and a toothpick inserted into the center of each comes out clean, about 35 minutes. Let cool in pans set on a wire rack for 15 minutes. Turn out cakes onto racks and let cool completely.\r\n\r\n3. Make the caramel: Combine granulated sugar, corn syrup, and water in a medium saucepan over high heat. Cook, without stirring, until mixture is dark amber, about 14 minutes. Remove from heat, and carefully pour in cream (mixture will bubble violently); stir until smooth. Return to heat, and cook until a candy thermometer reaches 238F, about 2 minutes. Pour caramel into a medium bowl, stir in 1 teaspoon coarse salt, and let cool slightly, about 15 minutes. Stir in butter, 1 tablespoon at a time. Let cool completely.\r\n\r\n4. Meanwhile, make the frosting: whisk together cocoa and warm water in a bowl until cocoa dissolves. Beat butter, confections' sugar, and a generous pinch of coarse salt in a clean bowl with a mixer on medium speed until pale and fluffy. Gradually beat in melted chocolate and then cocoa mixture until combined. Let stand for 30 minutes before using.\r\n\r\n5. Trim tops of cakes using a serrated knife to creat a level surface. Cut each in half horizontally to form 2 layers. Transfer 1 layer to a serving platter and spread 3\/4 cup caramel over top. Top with another cake layer, and repeat with remaining caramel and cake layers, leaving top uncovered. Refrigerate until set, about 1 hour.\r\n\r\n6. Frost top and sides of cake in a swirling motion. Sprinkle with sea salt.\r\n\r\nMake ahead: Caramel can be refrigerated for up to 3 days. Bring to room temperature before using. Cake layers can be refrigerated for up to 3 days (they actually taste better when refrigerated and have a better texture for stacking).\r\n\r\nStorage: Frosted cake can be refrigerated for up to 3 days.",
        ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm58',
    calories:'164.4',
    categories: [
      'c7',
    ],
    title: "Broken glass cupcakes",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i1.wp.com/recipesbycarina.com/wp-content/uploads/2019/09/Broken-Glass-Cupcake.jpg?resize=2133%2C2845&ssl=1',
    duration: 30,
    ingredients: [
       "4 1\/2 cup cake flour\r",
            "2 tbsp baking powder\r",
            "1\/2 tsp ground cinnamon\r",
            "1\/4 tsp nutmeg, freshly grated\r",
            "salt\r",
            "1 1\/2 cup whole milk\r",
            "1 tbsp pure vanilla extract\r",
            "2 1\/4 stick unsalted butter, room temperature\r",
            "2 1\/4 cup granulated sugar\r",
            "7 egg whites, room temperature\r",
            "<hr>\r",
            "1 1\/2 cup granulated sugar\r",
            "3\/4 cup water\r",
            "<hr>\r",
            "1 pound cream cheese, room temperature\r",
            "2 stick unsalted butter, room temperature\r",
            "6 cup confectioners' sugar\r",
            "1\/2 tsp pure vanilla extract\r",
            "1 cup cherry preserves, strained, for garnish"
    ],
    steps: [
     "1. Preheat oven to 350F. Make the cupcakes: line cupcake tins with baking cups. Sift flour, baking powder, cinnamon, nutmeg, and 3\/4 teaspoon salt into a medium bowl. Combine milk and vanilla in a measuring cup.\r\n2. Beat butter with a mixer on medium-high speed until pale and fluffy. Reduce speed to medium, and gradually add granulated sugar in a slow, steady stream. Beat until pale and fluffy, about 3 minutes. Reduce speed to low, and add flour mixture in 3 additions, alternating with milk mixture, beginning and ending with flour.\r\n3. In a clean bowl, whisk egg whites with a mixer on medium-high speed until stiff peaks form. Fold one-third of the whites into the cupcake batter. Fold in remaining egg whites in 2 batches.\r\n4. Divide batter among baking cups, filling each halfway full. Bake until a toothpick inserted into the center of each comes out clean and the tops spring back when lightly touched, 18 to 20 minutes. Let cool completely in tins set on wire racks.\r\n5. Meanwhile, make the caramel: bring granulated sugar and water to a boil in a small high-sided saucepan, stirring, until sugar dissolves. Reduce heat to medium-high, and cook until mixture just starts to turn pale gold around edges. Remove from heat, and immediately pour caramel onto a rimmed baking sheet. Working quickly, tilt pan to spread caramel to edges to make a very thin layer. Let cool to harden.\r\n6. Make the frosting: beat cream cheese and butter with a mixer on medium-high speed until pale and fluffy. Gradually add confectioners' sugar and vanilla. Beat until creamy and spreadable.\r\n7. Frost each cupcake using an offset spatula. Twist pan to release and break caramel in order for it to resemble broken glass. Place a shard or 2 of caramel \"glass\" in the center of each cupcake. Drizzle or pipe cherry preserves where caramel has entered the cupcake.\r\n\r\nMake ahead: unfrosted cupcakes can be stored at room temperature for up to 2 days. Frosting can be refrigerated for up to 4 days. Caramel can be stored at room temperature for up to 1 day, break just before using.\r\n\r\nStorage: frosted cupcakes can be refrigerated for up to 1 day. Top with caramel shards and cherry preserves just before serving."
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm59',
    calories:'301',
    categories: [
      'c7',
    ],
    title: "Creepy crawly cake",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=750&h=375&url=https%3A%2F%2Fassets.marthastewart.com%2Fstyles%2Fwmax-750%2Fd33%2Fcrawly-cake-phobias-1011mld107647%2Fcrawly-cake-phobias-1011mld107647_vert_0_horiz.jpg%3Fitok%3Df2RnN138',
    duration: 60,
    ingredients: [
       "Vegetable oil cooking spray\r",
            "1 cup all-purpose flour, plus more for pans\r",
            "1 cup cake flour, not self rising\r",
            "1 tsp baking soda\r",
            "Salt\r",
            "1 3\/4 stick unsalted butter, 14 tablespoons total, room temperature\r",
            "1 1\/3 cup sugar\r",
            "3 large eggs\r",
            "1 1\/2 tsp pure vanilla extract\r",
            "1 cup low-fat buttermilk\r",
            "5 ounce semisweet chocolate, melted and cooled\r",
            "<hr>\r",
            "2 cup heavy cream\r",
            "8 oz semisweet chocolate, chopped\r",
            "8 oz bittersweet chocolate, chopped\r",
            "1 tbsp unsalted butter\r",
            "1 1\/2 cup chocolate malt balls, coarsely chopped\r",
            "garnish, rubber cockroaches (fakebugs.com)"
    ],
    steps: [
      'Preheat oven to 350F. Make the cake: Coat two 9-inch cake pans with cooking spray. Line bottoms with parchment, and coat with spray. Dust with all-purpose flour, tapping out excess. Whisk together flours, baking soda, and 3\/4 teaspoon salt.\r\n2. Beat butter and sugar with a mixer on medium0high speed until pale and fluffy. Add eggs, 1 at a time, beating well after each addition. Beat in vanilla. Reduce speed to low. Beat in flour mixture in 3 additions, alternating with buttermilk, beginning and ending with flour. Beat in melted chocolate. Divide batter between pans, and smooth tops using an offset spatula.\r\n3. Bake cakes until a toothpick inserted into the centers comes out clean, 25 to 30 minutes. Turn out cakes onto racks, remove parchment, and let cool completely.\r\n4. Make the ganache: Bring cream to a gentle simmer in a small saucepan over medium-high heat. Pour over chopped chocolates and butter in a bowl. Let stand for 5 minutes. Whisk until smooth and shiny. Let stand until thickened, about 40 minutes. Transfer 1 3\/4 cups ganache to a bowl, and fold in malt balls; reserve remaining ganache.\r\n5. Transfer 1 cake to a serving platter (top side up). Spread ganache-malt ball filling on top, and top with remaining cake (top side up). Refrigerated until set, about 15 minutes. Cut a large wedge from cake to serve on another plate. Pour remaining ganache (reheat if necessary) over cake and wedge, and let drip down sides and into cut center of cake. Garnish cake and platter with rubber cockroaches.\r\n\r\nStorage: Decorated cake can be refrigerated for up to 3 days, but the ganache with not be as shiny,. Bring to room temperature before serving'
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm60',
    calories:'200',
    categories: [
      'c7'
      //     'c5',
      // 'c10',
    ],
    title: "Chocolate-Hazelnut Icebox Cake",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.foodnetwork.com/content/dam/images/food/video/5/52/521/5219/5219830.jpg',
    duration: 150,
    ingredients: [
       "1 1\/2 cup chocolate hazelnut spread\r",
            "1\/3 cup hazelnut-flavored liqueur\r",
            "2 cup heavy whipping cream\r",
            "18 whole chocolate graham crackers, (about 5 x 2-in.\/13 x 5-cm rectangles), divided\r",
            "2 tbsp unsweetened cocoa powder, for dusting\r",
            "<hr>\r",
            "1\/2 cup heavy whipping cream\r",
            "2 tbsp hazelnut-flavored liqueur\r",
            "2 tbsp powdered sugar\r",
            "Cocoa powder, for garnish\r",
            "Hazelnuts, toasted and chopped for garnish\r",
            "1\/2 cup semi-sweet chocolate chips, for Chocolate Flower garnishes"

    ],
    steps: [
       "1. For filling, combine chocolate hazelnut spread and liqueur in Stainless (4-qt.\/4-L) \r\nMixing Bowl; beat on medium speed of electric mixer until well blended. Gradually add \r\ncream; increase speed to medium-high and continue beating just until very soft peaks \r\nform (do not overbeat).  \r\n2. For cake, arrange four and a half of the crackers in a single layer in Square Baking Pan; \r\ntop with 1 cup (250 mL) of the hazelnut filling. Spread filling to edges with Small \r\nSpreader; repeat layers three more times, ending with all of the remaining filling. (There \r\nwill be more filling on top than in the inner layers.) Cover and refrigerate at least 8 hours \r\nor overnight.  \r\n3. When ready to serve, prepare hazelnut cream. Beat cream on medium-high speed of \r\nmixer in Stainless (2-qt.\/2-L) Mixing Bowl until soft peaks form. Add liqueur and \r\npowdered sugar; continue beating until stiff peaks form.  \r\n4. Sprinkle cake with cocoa powder using Flour\/Sugar Shaker; cut into servings. Top each \r\nserving with hazelnut cream and garnish with hazelnuts and Chocolate Flowers, if desired.\r\n\r\nCook\u2019s Tips: For Chocolate Flowers, place 1\/2 cup (125 mL) semi-sweet chocolate morsels into \r\nSmall Micro-Cooker\u00ae; microwave, uncovered, on HIGH 1 minute or until mostly melted, stirring\r\nevery 20 seconds. Pour melted chocolate into resealable plastic bag; twist to secure. Cut a small \r\ntip off corner of bag to allow chocolate to flow through. For three-dimensional design, cut 12 \r\npieces of Parchment Paper into 21\/2 x 3-in. (6 x 7.5-cm) squares; fold in half. Fit parchment in \r\nwells of Muffin Pan. Pipe chocolate flower on Parchment Paper; refrigerate 15 minutes or until \r\nset. ",
     
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm61',
    calories:'95',
    categories: [
      'c7',
    ],
    title: "Simple lemon cake",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://images.media-allrecipes.com/userphotos/6671817.jpg',
    duration: 45,
    ingredients: [
      
            "3\/4 cup unsalted butter, room temperature, plus more for pan\r",
            "2 cup all-purpose flour, plus more for pan\r",
            "3\/4 pound lemons, about 4, ends removed, cut into thin slices\r",
            "coarse salt\r",
            "2 cup granulated sugar\r",
            "2 large eggs\r",
            "2 egg yolks\r",
            "1 tsp baking powder\r",
            "2\/3 cup whole milk\r",
            "2 tsp vanilla extract\r",
            "confectioners' sugar, for dusting\r",
            "raspberries (optional), for serving\r",
            "whipped cream (optional), for serving"

    ],
    steps: [
      "Preheat oven to 400F. Lightly butter and flour a 9-inch round cake pan (2 inches deep). In a medium saucepan, cover lemon slices with 3 cups water. Add pinch of salt, cover, and bring to a boil over high. Boil lemons, partially covered, until very tender, 15 minutes. Drain and transfer to food processor. Add butter and process until smooth, scraping down bowl as needed. Add granulated sugar, eggs, and yolks and process to combine; transfer to a large bowl.\r\n\r\n2. In a medium bowl, whisk together flour, baking powder, and 1\/2 tsp salt. Measure milk in a liquid-measuring cup and add vanilla. In two additions, add flour mixture to lemon mixture, alternating with milk.\r\n\r\n3. Transfer batter to pan and smooth top. Bake until cake is golden brown and a toothpick inserted in center comes out with a few moist crumbs attached, 40 minutes. Let cool in pan on a wire rack, 20 minutes. Remove cake from pan and let cool completely on rack, 1 hour. (Store cooled cake, tightly wrapped in plastic, at room temperature up to 1 day.) Dust with confectioners' sugar and serve with raspberries and cream, if desired"

    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm62',
    calories:'136',
    categories: [
      'c7',
    ],
    title: "Towering flourless chocolate cake",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/1/24/3/FNM_030112-WEDinners-044_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371603345508.jpeg',
    duration: 95,
    ingredients: [
     "2 1\/2 stick unsalted butter, cut into pieces, plus more for the pan\r",
            "6 ounce bittersweet chocolate, chopped\r",
            "6 ounce unsweetened chocolate, chopped\r",
            "6 eggs\r",
            "3\/4 cup turbinado sugar\r",
            "Pinch of salt\r",
            "1\/2 cup stout beer (such as Guinness)\r",
            "1 teaspoon vanilla extract\r",
            "<hr>\r",
            "2 ounce semisweet chocolate, chopped\r",
            "2 tablespoon unsalted butter\r",
            "1 tablespoon light corn syrup\r",
            "1 cup granulated sugar\r",
            "3 egg whites\r",
            "1\/4 teaspoon cream of tartar\r",
            "Pinch of salt\r",
            "2 teaspoon vanilla extract"
    ],
    steps: [
"Make the cake: Preheat the oven to 325 degrees F. Butter the bottom and sides of a 9-inch springform pan and line the bottom with parchment paper.\r\n\r\nPut the bittersweet and unsweetened chocolate in a heatproof bowl and set over a saucepan of simmering water (do not let the bowl touch the water). Stir until the chocolate melts, then remove the bowl from the pan.\r\n\r\nPut the eggs, turbinado sugar and salt in the bowl of a stand mixer. Set the bowl over the same pan of simmering water and whisk until the mixture is warm, about 2 minutes. Transfer the bowl to the stand mixer; beat with the whisk attachment on medium speed until tripled in volume, about 5 minutes.\r\n\r\nMeanwhile, bring the beer and vanilla to a low boil in a saucepan. Reduce the mixer speed to low; beat in the beer mixture, then the melted chocolate, until combined, about 2 minutes. Gradually beat in the butter until incorporated.\r\n\r\nPour the batter into the prepared pan. Bake until a toothpick comes out with a few crumbs, about 35 minutes. Cool in the pan on a rack 1 hour, then run a knife around the edge of the pan and remove the ring. Let cool completely.\r\n\r\nMake the meringue: Microwave the chocolate, butter and corn syrup in a microwave-safe bowl in 30-second intervals, stirring, until the chocolate melts.\r\n\r\nWhisk the granulated sugar, egg whites, cream of tartar, salt and 1\/3 cup water in a heatproof bowl. Put the bowl over a saucepan of simmering water; beat with a handheld mixer on low speed, then gradually increase the speed to high and beat until soft peaks form, about 5 minutes. Remove the bowl from the pan; continue beating until the meringue is cool and fluffy. Fold in the vanilla, then fold in the melted chocolate until swirled. Spread the meringue on the cake.",
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm63',
    calories:'860',
    categories: [
      'c7',
    ],
    title: "Godiva Dark Chocolate Cheesecake",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://i1.wp.com/www.breezybakes.com/wp-content/uploads/2018/03/gluten-free-cheesecake-chocolate.jpg?fit=700%2C1053&ssl=1',
    duration: 95,
    ingredients: [
       "2 1\/2 cup cream cheese, room temperature\r",
            "1\/2 cup sugar\r",
            "1 3\/4 tablespoon cocoa powder\r",
            "5 tablespoon Godiva 85% Dark Chocolate Callets\r",
            "2 eggs\r",
            "2 egg yolks\r",
            "1 3\/4 tablespoon cr\u00e8me faiche"

    ],
    steps: [
      "In a food processor with a blade attachment, cream the cheese until smooth and then add in sugar. Pulse a couple times to incorporate sugar and cocoa powder. Add in eggs and yolks pulsing a couple times again and scrape down to ensure all is smooth and uniform. With machine running, pour in melted Godiva Chocolate in a steady stream until all in, and finish by pulsing in the cr\u00e8me fraiche. Pour batter into a 10\" x 10\" baking pan and bake at 325 for 30, minutes or until custard is set and a toothpick inserted in center can be removed cleanly. The top may caramelize or brown slightly, which is not an issue. Once set, remove from oven and allow cheesecake to cool completely. Wrap the pan with plastic and reserve in cooler to set and chill completely.\r\n\r\nOnce the cheesecake is cold and firm, remove it from the pan and place in a mixer bowl with a paddle attachment. Beat the cake for a few moments to soften and smooth out the custard. Place smoothed custard into a piping bag with a plain tip and pipe into the bottom of a plastic lined half cylinder mold. Tap the mold to ensure the custard is solid and then flatten out to top. Freeze the mold to harden the custard for unmolding. Once the cake can be unmolded, remove from the pan and cut into 1\u00bd\" sections. Brush some tempered Godiva Dark Chocolate onto a strip of acetate and, while it is still fluid, smooth over the top of the molded cheesecake. Once the chocolate has cooled and completely crystallized, remove the acetate, revealing a shiny and textured chocolate finish.",

    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm64',
    calories:'360',
    categories: [
      'c7',
    ],
    title: "Towering flourless chocolate cake",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/1/24/3/FNM_030112-WEDinners-044_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371603345508.jpeg',
    duration: 95,
    ingredients: [
      
            "2 1\/2 stick unsalted butter, cut into pieces, plus more for the pan\r",
            "6 ounce bittersweet chocolate, chopped\r",
            "6 ounce unsweetened chocolate, chopped\r",
            "6 eggs\r",
            "3\/4 cup turbinado sugar\r",
            "Pinch of salt\r",
            "1\/2 cup stout beer (such as Guinness)\r",
            "1 teaspoon vanilla extract\r",
            "<hr>\r",
            "2 ounce semisweet chocolate, chopped\r",
            "2 tablespoon unsalted butter\r",
            "1 tablespoon light corn syrup\r",
            "1 cup granulated sugar\r",
            "3 egg whites\r",
            "1\/4 teaspoon cream of tartar\r",
            "Pinch of salt\r",
            "2 teaspoon vanilla extract"
    ],
    steps: [
      "Make the cake: Preheat the oven to 325 degrees F. Butter the bottom and sides of a 9-inch springform pan and line the bottom with parchment paper.\r\n\r\nPut the bittersweet and unsweetened chocolate in a heatproof bowl and set over a saucepan of simmering water (do not let the bowl touch the water). Stir until the chocolate melts, then remove the bowl from the pan.\r\n\r\nPut the eggs, turbinado sugar and salt in the bowl of a stand mixer. Set the bowl over the same pan of simmering water and whisk until the mixture is warm, about 2 minutes. Transfer the bowl to the stand mixer; beat with the whisk attachment on medium speed until tripled in volume, about 5 minutes.\r\n\r\nMeanwhile, bring the beer and vanilla to a low boil in a saucepan. Reduce the mixer speed to low; beat in the beer mixture, then the melted chocolate, until combined, about 2 minutes. Gradually beat in the butter until incorporated.\r\n\r\nPour the batter into the prepared pan. Bake until a toothpick comes out with a few crumbs, about 35 minutes. Cool in the pan on a rack 1 hour, then run a knife around the edge of the pan and remove the ring. Let cool completely.\r\n\r\nMake the meringue: Microwave the chocolate, butter and corn syrup in a microwave-safe bowl in 30-second intervals, stirring, until the chocolate melts.\r\n\r\nWhisk the granulated sugar, egg whites, cream of tartar, salt and 1\/3 cup water in a heatproof bowl. Put the bowl over a saucepan of simmering water; beat with a handheld mixer on low speed, then gradually increase the speed to high and beat until soft peaks form, about 5 minutes. Remove the bowl from the pan; continue beating until the meringue is cool and fluffy. Fold in the vanilla, then fold in the melted chocolate until swirled. Spread the meringue on the cake.",

    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

//snacks
 Meal(
    id: 'm65',
    calories:'54',
    categories: [
      'c8',
    ],
    title: "Mixture",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://m.media-amazon.com/images/I/51AmY+7Ds3L.jpg',
    duration: 40,
    ingredients: [

            "3 cup Corn Chex\u00ae cereal\r",
            "3 cup Rice Chex\u00ae cereal\r",
            "3 cup Wheat Chex\u00ae cereal\r",
            "1 cup mixed nuts\r",
            "1 cup bite-size pretzels\r",
            "1 cup garlic-flavor bite-size bagel chips or regular-size bagel chips, broken into 1-inch pieces\r",
            "6 tablespoon butter or margarine\r",
            "2 tablespoon Worcestershire sauce\r",
            "1 1\/2 teaspoon seasoned salt\r",
            "3\/4 teaspoon garlic powder\r",
            "1\/2 teaspoon onion powder"
    ],
    steps: [
      "Heat oven to 250. Place butter in large roasting pan and melt in the oven. Mix together cereals, nuts, pretzels and bagel chips in a large bowl. Remove pan from oven and mix seasonings into the melted butter. Add cereal mix and stir well to coat with seasoned butter. Place in the oven and bake for 1 hour, stirring every 15 minutes. Spread mix out to cool before storing.",
 
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
 Meal(
    id: 'm67',
    calories:'142',
    categories: [
      'c8',
    ],
    title: "Laddu",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ndtvimg.com/i/2014-12/ladoo_625x350_41419594783.jpg',
    duration: 30,
    ingredients: [

            "3 cup Corn Chex\u00ae cereal\r",
            "3 cup Rice Chex\u00ae cereal\r",
            "3 cup Wheat Chex\u00ae cereal\r",
            "1 cup mixed nuts\r",
            "1 cup bite-size pretzels\r",
            "1 cup garlic-flavor bite-size bagel chips or regular-size bagel chips, broken into 1-inch pieces\r",
            "6 tablespoon butter or margarine\r",
            "2 tablespoon Worcestershire sauce\r",
            "1 1\/2 teaspoon seasoned salt\r",
            "3\/4 teaspoon garlic powder\r",
            "1\/2 teaspoon onion powder"
    ],
    steps: [
      "Heat oven to 250. Place butter in large roasting pan and melt in the oven. Mix together cereals, nuts, pretzels and bagel chips in a large bowl. Remove pan from oven and mix seasonings into the melted butter. Add cereal mix and stir well to coat with seasoned butter. Place in the oven and bake for 1 hour, stirring every 15 minutes. Spread mix out to cool before storing.",
 
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
 Meal(
    id: 'm68',
    calories:'97',
    categories: [
      'c8',
    ],
    title: "Medhu vada",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.indianhealthyrecipes.com/wp-content/uploads/2014/07/medu-vada-recipe.jpg',
    duration: 30,
    ingredients: [

            "3 cup Corn Chex\u00ae cereal\r",
            "3 cup Rice Chex\u00ae cereal\r",
            "3 cup Wheat Chex\u00ae cereal\r",
            "1 cup mixed nuts\r",
            "1 cup bite-size pretzels\r",
            "1 cup garlic-flavor bite-size bagel chips or regular-size bagel chips, broken into 1-inch pieces\r",
            "6 tablespoon butter or margarine\r",
            "2 tablespoon Worcestershire sauce\r",
            "1 1\/2 teaspoon seasoned salt\r",
            "3\/4 teaspoon garlic powder\r",
            "1\/2 teaspoon onion powder"
    ],
    steps: [
      "Heat oven to 250. Place butter in large roasting pan and melt in the oven. Mix together cereals, nuts, pretzels and bagel chips in a large bowl. Remove pan from oven and mix seasonings into the melted butter. Add cereal mix and stir well to coat with seasoned butter. Place in the oven and bake for 1 hour, stirring every 15 minutes. Spread mix out to cool before storing.",
 
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
 Meal(
    id: 'm69',
    calories:'91',
    categories: [
      'c8',
    ],
    title: "Dal vada",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn2.foodviva.com/static-content/food-images/snacks-recipes/masala-vada-chan-dal/masala-vada-chana-dal.jpg',
    duration: 30,
    ingredients: [

            "3 cup Corn Chex\u00ae cereal\r",
            "3 cup Rice Chex\u00ae cereal\r",
            "3 cup Wheat Chex\u00ae cereal\r",
            "1 cup mixed nuts\r",
            "1 cup bite-size pretzels\r",
            "1 cup garlic-flavor bite-size bagel chips or regular-size bagel chips, broken into 1-inch pieces\r",
            "6 tablespoon butter or margarine\r",
            "2 tablespoon Worcestershire sauce\r",
            "1 1\/2 teaspoon seasoned salt\r",
            "3\/4 teaspoon garlic powder\r",
            "1\/2 teaspoon onion powder"
    ],
    steps: [
      "Heat oven to 250. Place butter in large roasting pan and melt in the oven. Mix together cereals, nuts, pretzels and bagel chips in a large bowl. Remove pan from oven and mix seasonings into the melted butter. Add cereal mix and stir well to coat with seasoned butter. Place in the oven and bake for 1 hour, stirring every 15 minutes. Spread mix out to cool before storing.",
 
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
 Meal(
    id: 'm70',
    calories:'130',
    categories: [
      'c8',
    ],
    title: "Original Chex Party Mix",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/2020_df_retail_original-chex-party-mix_20421_v1_760x580.jpg?ext=.jpg',
    duration: 10,
    ingredients: [

            "3 cup Corn",
            "3 cup Rice",
            "3 cup Wheat",
            "1 cup mixed nuts\r",
            "1 cup bite-size pretzels\r",
            "1 cup garlic-flavor bite-size bagel chips or regular-size bagel chips, broken into 1-inch pieces\r",
            "6 tablespoon butter or margarine\r",
            "2 tablespoon Worcestershire sauce\r",
            "1 1\/2 teaspoon seasoned salt\r",
            "3\/4 teaspoon garlic powder\r",
            "1\/2 teaspoon onion powder"
    ],
    steps: [
      "Heat oven to 250. Place butter in large roasting pan and melt in the oven. Mix together cereals, nuts, pretzels and bagel chips in a large bowl. Remove pan from oven and mix seasonings into the melted butter. Add cereal mix and stir well to coat with seasoned butter. Place in the oven and bake for 1 hour, stirring every 15 minutes. Spread mix out to cool before storing.",
 
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm71',
    calories:'110',
    categories: [
      'c8',
    ],
    title: "Drop biscuits",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://1.bp.blogspot.com/-S5toEyJLgHI/XsakNR4U4EI/AAAAAAABDK4/oUMxjIdzWLQ5aZw0NbANRafIHVE7lgcUACLcBGAsYHQ/s1600/Mutta-biscuit%2B1.jpg',
    duration: 30,
    ingredients: [
      "2 cup all-purpose flour\r",
            "2 teaspoon baking powder\r",
            "1\/2 teaspoon baking soda\r",
            "1 teaspoon sugar\r",
            "3\/4 teaspoon fine salt\r",
            "1 cup buttermilk, cold\r",
            "8 tablespoon unsalted butter, melted and cooled slightly (about 5 minutes)\r",
            "2 tablespoon unsalted butter, melted for brushing biscuits"
           
    ],
    steps: [
    "2 cup all-purpose flour\r",
            "2 teaspoon baking powder\r",
            "1\/2 teaspoon baking soda\r",
            "1 teaspoon sugar\r",
            "3\/4 teaspoon fine salt\r",
            "1 cup buttermilk, cold\r",
            "8 tablespoon unsalted butter, melted and cooled slightly (about 5 minutes)\r",
            "2 tablespoon unsalted butter, melted for brushing biscuits"
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm72',
    calories:'180',
    categories: [
      'c8',
    ],
    title: "Flaky Buttermilk Biscuits",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://www.thespruceeats.com/thmb/bm7BQ4OgFjTUJNy0HAF8Tm8o2Zc=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/buttermilk-biscuits-428323-12-4b6ed79fd5ac4989897728d6037c17b8.jpg',
    duration: 20,
    ingredients: [
 "8 tablespoon unsalted butter, cold, lightly floured and cut into 1\/8-inch slices\r",
            "2 tablespoon vegetable shortening, cut into 1\/2-inch chunks\r",
            "1 teaspoon salt\r",
            "1 tablespoon baking powder\r",
            "1\/2 teaspoon baking soda\r",
            "2 1\/2 cup unbleached all-purpose flour\r",
            "2 tablespoon butter, melted\r",
            "1 1\/4 cup buttermilk, cold"
           
    ],
    steps: [
      "Adjust oven rack to lower-middle position; heat oven to 450 degrees.  \r\n\r\nWhisk flour, baking power, baking soda, and salt in large bowl.\r\n\r\nAdd shortening to flour mixture; break up chunks with fingertips until only pea-sized pieces remain.  Working in batches, drop butter slices into flour mixture and toss to coat; pick up each slice of butter and press between floured fingertips into flat, nickel-sized pieces.  Repeat until all butter is incorporated; toss to combine.  Freeze mixture (in bowl) until chilled, about 15 minutes.\r\n\r\nSpray 24-square-inch work surface with nonstick cooking spray; spread spray evenly across surface with kitchen towel or paper towel.  Sprinkle 1\/3 cup of extra flour across sprayed area; gently spread flour across work surface with palm to form thin, even coating.  Add all but 2 tablespoons of buttermilk to flour mixture; stir briskly with fork until ball forms and no dry bits of flour are visible, adding remaining buttermilk as needed (dough will be sticky and shaggy but should clear sides of bowl).  With rubber spatula, transfer dough onto center of prepared work surface, dust surface lightly with flour, and, with floured hands, bring dough together into cohesive ball.\r\n\r\nPat dough into approximate 10-inch square; roll into 18- by 14-inch rectangle about 1\/4 inch thick, dusting dough and rolling pin with flour as needed.  Using bench scraper or thin metal spatula, fold dough into thirds, brushing any excess flour from surface; lift short end of dough and fold in thirds again to form approximate 6- by 4-inch rectangle.  Rotate dough 90 degrees, dusting work surface underneath with flour; roll and fold dough again, dusting with flour as needed.\r\n\r\nRoll dough into 10-inch square about 1\/2 inch thick; flip dough and cut nine 3-inch rounds with floured biscuit cutter, dipping cutter back into flour after each cut.  Carefully invert and transfer rounds to ungreased baking sheet, spaced 1 inch apart.  Gather dough scraps into ball; roll and fold once or twice until scraps form smooth dough.  Roll dough into 1\/2-inch-thick round; cut 3 more 3-inch rounds and transfer to baking sheet.  Discard excess dough.\r\n\r\nBrush biscuit tops with melted butter.  Bake, without opening oven door, until tops are golden brown and crisp, 15 to 17 minutes.  Let cool on baking sheet 5 to 10 minutes before serving.",
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm73',
    calories:'150',
    categories: [
      'c8'
      //     'c5',
      // 'c10',
    ],
    title: 'Murukku',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/A_Traditional_Tamil_Snack_Murukku.jpg/1200px-A_Traditional_Tamil_Snack_Murukku.jpg',
    duration: 15,
    ingredients: [
      '1 1\/2 cup fresh blood orange juice',
      'from 7-8 blood oranges, chilled',
      '6 tablespoon Solerno or other blood orange liqueur',
    ],
    steps: [
      'Combine blood orange juice and liqueur in a large pitcher.',
      'Refrigerate for at least 30 minutes.',
      'Pour into test tubes (indigo.com) or small glasses.',
      'Cocktails can be refrigerated in pitcher overnight.',
      'Stir before using.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm74',
    calories:'131',
    categories: [
      'c8',
    ],
    title: 'Thattai',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.vegrecipesofindia.com/wp-content/uploads/2019/09/thattai-recipe.jpg',
    duration: 40,
    ingredients: [
      '1\/2 cup sugar',
      '1\/3 cup water',
      '1\/3 cup unsweetened cocoa powder',
      '1\/2 tsp vanilla extract',
      '6 cup cold milk',
      'Kosher salt',
    ],
    steps: [
      'Make the chocolate syrup: combine the sugar and water in a small saucepan',
      'Bring to a simmer over medium heat, then whisk in the cocoa powder until smooth',
      'Remove from the heat and stir in the vanilla. Let cool completely',
      'Spoon about 2.5 tbsp of the chocolate syrup into each glass.',
      'Add 1 1\/2 cups milk and a generous pinch of salt',
      'Stir until the syrup and salt dissolves.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm75',
    calories:'751',
    categories: [
      'c8',
    ],
    title: 'Boondhi',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn1.foodviva.com/static-content/food-images/snacks-recipes/boondi-recipe/boondi-recipe.jpg',
    duration: 45,
    ingredients: [
      '1 cup sugar',
      '1 cup water',
      '6 lemons, juiced; peel one and cut the peel into strips',
      'mint and lemon slices for garnish',
    ],
    steps: [
      'In a small saucepan bring sugar and water to a boil, add peel and simmer for 5 minutes.',
      'Remove from heat, bring to room temperature and strain out peel.',
      'o a 2 quart pitcher add lemon juice, 1\/2 cup of the syrup, and 5 cups water.',
      'Stir, taste, and adjust ratio of water and syrup as desired.\r\n\r\nServe over ice, garnished with a mint sprig.'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm76',
    calories:'316',
    categories: [
      'c8',
    ],
    title: 'Pakvada',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn3.foodviva.com/static-content/food-images/snacks-recipes/onion-pakoda/onion-pakoda.jpg',
    duration: 25,
    ingredients: [
      '1 cup milk',
      '1 banana',
      '2 tbsp peanut butter',
      '1\/4 cup flax meal',
      '2 tbsp jelly',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm77',
    calories:'68',
    categories: [
      'c8',
    ],
    title: 'Bonda',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://foodiewish.com/wp-content/uploads/2020/08/Mysore-Bonda-Recipe.jpg',
    duration: 25,
    ingredients: [
      '1 ounce Irish cream liqueur',
      '1 ounce Kahlua',
      '1 ounce Frangelico',
      '5 ounce hot coffee',
      'Whipped cream, for garnish',
      'Green sanding sugar, for garnish (optional)',
    ],
    steps: [
      'Place Irish cream, Frangelico, and Kahlua in a coffee mug.',
      'pour over coffee.',
      'Top with whipped cream and sanding sugar, if desired.',
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),


//salad

 Meal(
    id: 'm78',
    calories:'400',
    categories: [
      'c9',
    ],
    title: "Greek Salad",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=2997&h=1499&url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F827520.jpg',
    duration: 20,
    ingredients: [
"6 tablespoon lemon juice\r",
            "2 clove garlic, minced\r",
            "2 teaspoon kosher salt, plus more to taste\r",
            "1 cup extra-virgin olive oil, preferably Greek\r",
            "<hr>\r",
            "1 head romaine lettuce, trimmed of tough stems and torn into bite-sized pieces\r",
            "1 cup kalamata olives, about 6oz\/cup\r",
            "1\/2 pound Feta cheese, crumbled\r",
            "1 cucumber, trimmed, cut into 1 inch chunks\r",
            "1 1\/2 cup grape tomatoes, halved\r",
            "1 small red onion, cut into 1\/2-inch wedges, soaked in cold water for 5 minutes and drained\r",
            "2 teaspoon dried oregano\r",
            "Freshly ground black pepper"
    ],
    steps: [
     "In a small bowl, whisk together the lemon juice, garlic, salt, and oil. Set aside.   In a large bowl lightly toss the lettuce with the olives, cheese, cucumber, tomatoes, onion, oregano, and black pepper. Let sit up to 2 hours.  To serve, toss salad with dressing and place sliced chicken on top.",
    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm79',
    calories:'400',
    categories: [
      'c9',
    ],
    title: "Margherita Salad",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://4.bp.blogspot.com/-DVszmINHrNA/XMLkehNDz6I/AAAAAAAAazs/bi6QjO3qH6gCvqGWeN_LFXTv_zx0fGrKwCLcBGAs/s1600/Margherita%2Bsalad%2B5.JPG',
    duration: 15,
    ingredients: [
      
            "1 plum tomato, halved\r",
            "4 sun-dried tomatoes packed in oil\r",
            "2 tablespoon oil from the sun-dried tomato jar\r",
            "2 tablespoon red wine vinegar\r",
            "1 clove garlic\r",
            "1\/2 teaspoon dried oregano\r",
            "1\/4 bunch fresh basil, torn\r",
            "2 tbsp parmesan, grated\r",
            "Kosher salt and freshly ground pepper\r",
            "<hr>\r",
            "2 tablespoon extra-virgin olive oil\r",
            "1 cup breadcrumbs\r",
            "2 tablespoon chopped fresh parsley\r",
            "1\/4 cup parmesan, grated\r",
            "<hr>\r",
            "8 cup Italian-blend salad greens\r",
            "3\/4 bunch fresh basil, chiffonade\r",
            "8 ounce bocconcini (mozzarella), quartered"

    ],
    steps: [
      "Puree the plum tomato, sun-dried tomatoes, vinegar, garlic, oregano, a basil leaves and parmesan in a blender, drizzling in the sun-dried tomato oil until smooth. Add 2 to 3 tablespoons water, if needed to make a pour-able dressing; season with salt and pepper.\r\n\r\nHeat the olive oil in a large skillet over medium-high heat. Add the breadcrumbs, season with salt and pepper and cook, stirring occasionally, until golden, about 2 minutes. Add the remaining parmesan and the parsley and cook until toasted, about 1 more minute.\r\n\r\nToss the salad greens, mozzarella, and remaining basil in a large bowl. Toss with the dressing, then sprinkle with the breadcrumb mixture.",

    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm80',
    calories:'371',
    categories: [
      'c9',
    ],
    title: "Super Protein Salad",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://wellandfull.com/wp-content/uploads/2016/07/wellandfull-5-1.jpg',
    duration: 15,
    ingredients: [
      "2 cup salad greens\r",
            "1\/4 cucumber, sliced\r",
            "1\/2 cup grape tomatoes\r",
            "1\/4 cup black beans, drained and rinsed\r",
            "1\/4 cup chickpeas, drained and rinsed\r",
            "1 tbsp pistachios\r",
            "2 tbsp dried cranberries\r",
            "<hr>\r",
            "salt and pepper, to taste\r",
            "2 tbsp olive oil\r",
            "1 tbsp red wine vinegar\r",
            "1 tsp Dijon mustard"
    ],
    steps: [
      "Combine olive oil, vinegar, mustard, salt and pepper to taste. Toss with other ingredients in a bowl and serve.",

    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm81',
    calories:'290',
    categories: [
      'c9'
      //     'c5',
      // 'c10',
    ],
    title:"Popeye's Muscle Salad" ,
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://hostessatheart.com/wp-content/uploads/2017/02/Power-Quinoa-Chickpea-Salad-1-819x1024.jpg',
    duration: 10,
    ingredients: [
      
            "1 cup baby spinach\r",
            "1 cup salad greens\r",
            "1 carrots, shredded\r",
            "1\/2 avocado, diced\r",
            "1 hard boiled eggs, peeled and carefully sliced\r",
            "2 tbsp pecans, chopped\r",
            "2 tbsp dried cranberries\r",
            "<hr>\r",
            "1 1\/2 tbsp olive oil\r",
            "2 tsp vinegar\r",
            "1 tsp dijon mustard\r",
            "salt and pepper"
     
    ],
    steps: [
            "Combine all ingredients in a bowl, toss, and serve.\r\n\r\nUse whatever vinaigrette you want.",

    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm82',
    calories:'85.2',
    categories: [
      'c9',
    ],
    title:"Citrus Rice Salad" ,
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn3.tmbi.com/toh/GoogleImagesPostCard/Lemon-Rice-Salad_EXPS_HC17_1492_D01_20_4b.jpg',
    duration: 20,
    ingredients: [
      "3 cup cooked brown rice, hot\r",
            "3 cup spinach leaves, stemmed and well rinsed\r",
            "1 cup toasted pine nuts\r",
            "1\/2 cup crumbled feta cheese\r",
            "<hr>\r",
            "1 orange, zested and juiced\r",
            "1 tablespoon fresh lemon juice\r",
            "1 tablespoon shallot, minced\r",
            "1\/4 cup extra-virgin olive oil\r",
            "salt and freshly ground pepper"

    ],
    steps: [
      "To make the dressing, combine the orange zest and juice, lemon juice, and shallot. Whisk in the olive oil and season with a few pinches of salt and a few grinds of pepper.\r\n\r\nToss the hot rice with the spinach, pine nuts, citrus dressing, then top with the feta. Taste for seasoning and sprinkle with a bit more salt if needed.",

    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm83',
    calories:'460',
    categories: [
      'c9',
    ],
    title: "Almond Caesar salad with croutons",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.pinimg.com/736x/64/b0/73/64b073868d1499d9a2b8a633264e1dde--caesar-salad-recipes-side-dish-recipes.jpg',
    duration: 20,
    ingredients: [
      "4 cup Italian bread, cubed\r",
            "2 tbsp olive oil\r",
            "2 tbsp sliced almonds\r",
            "2 tbsp Parmesan, grated\r",
            "1\/2 lemon, zested\r",
            "salt and pepper\r",
            "<hr>\r",
            "1\/4 cup sliced almonds\r",
            "1\/4 cup Parmesan, grated\r",
            "3 anchovies\r",
            "1 garlic clove\r",
            "2 tsp dijon mustard\r",
            "1 lemon, juiced\r",
            "1\/4 cup olive oil\r",
            "6 cup lettuce"
    ],
    steps: [
      "For croutons: Toss bread with olive oil, almonds, parmesan, lemon zest, salt and pepper. Spread on a baking sheet and bake at 425, about 8 minutes.\r\n\r\nFor dressing: Meanwhile, process almonds, parmesan, anchovies, and garlic in a food processor until finely chopped. Add dijon and lemon juice, pulse motor until just combined. With motor running, drizzle in olive oil until thoroughly combined. Season with salt and pepper.\r\n\r\nToss dressing with lettuce and croutons.",
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm84',
    calories:'338.9',
    categories: [
      'c9',
    ],
    title: 'Oregano Marinated Chicken',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cook.fnr.sndimg.com/content/dam/images/cook/fullset/2012/7/10/0/0044981F1_Greek-Salad-with-Oregano-Marinated-Chicken_s4x3.jpg.rend.hgtvcom.616.462.suffix/1397151946079.jpeg',
    duration: 85,
    ingredients: [
      
            "4 (6 to 7-ounce) boneless skinless chicken breasts\r",
            "10 grinds black pepper\r",
            "1\/2 tsp salt\r",
            "2 tablespoon extra-virgin olive oil\r",
            "1 teaspoon dried oregano\r",
            "1 lemon, juiced"

    ],
    steps: [

"To marinate the chicken: In a non-reactive dish, combine the lemon juice, olive oil, oregano, salt, and pepper and mix together. Add the chicken breasts to the dish and rub both sides in the mixture. Cover the dish with plastic wrap and let marinate in the refrigerator for at least 30 minutes and up to 4 hours.\r\n\r\nTo cook the chicken: Heat a nonstick skillet or grill pan over high heat. Add the chicken breasts and cook, turning once, until well browned, about 4 to 5 minutes on each side or until cooked through. Let the chicken rest on a cutting board for a few minutes before slicing it into thin strips.",
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm85',
    calories:'332',
    categories: [
      'c9',
    ],
    title: "Soba salad with asparagus and shrimp",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fassets.marthastewart.com%2Fstyles%2Fwmax-750%2Fd26%2Fmed105801_0710_soba_noodle%2Fmed105801_0710_soba_noodle_vert_0_horiz.jpg%3Fitok%3Ds4wm3kTJ',
    duration: 45,
    ingredients: [
     "Sea salt\r",
            "1 pound asparagus, trimmed\r",
            "1 pound frozen large shrimp (peeled and deveined), thawed\r",
            "3\/4 pound soba noodles\r",
            "3 tablespoon soy sauce\r",
            "1 tablespoon toasted sesame oil\r",
            "1 tablespoon rice vinegar\r",
            "1 tablespoon sugar\r",
            "3 green onions, thinly sliced\r",
            "1 cup fresh basil leaves, chiffonade"
    ],
    steps: [
"1. In a large pot of boiling salted water, cook asparagus until crisp-tender, about 3 minutes. With a slotted spoon or mesh strainer, transfer asparagus to a colander and rinse under cool water to stop the cooking. Transfer asparagus to a medium bowl. Return water to a boil; add shrimp and cook until pink and opaque throughout, about 2 minutes. Transfer shrimp to bowl with asparagus. Return water to a boil; add noodles and cook according to package instructions. Drain noodles and rinse under cool water.\r\n\r\n2. Meanwhile, in a small bowl, whisk together soy sauce oil, vinegar, and sugar. Divide noodles among four bowls and drizzle with dressing. Top with asparagus and shrimp and sprinkle with scallions and basil.",
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),


//soups

 Meal(
    id: 'm86',
    calories:'180',
    categories: [
      'c10',
    ],
    title:"Tomato Basil Soup",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.apartmenttherapy.info/image/upload/v1565383476/k/Photo/Recipes/2019-08-Recipe-Best-Tomato-Basil-Soup/Tomato_Basil_Soup_067.jpg',
    duration: 10,
    ingredients: [
      
      "4 c tomatoes, minced, peeled, and cored\r",
            "4 cup vegetable stock\r",
            "12 basil leaves\r",
            "1 c heavy cream\r",
            "1\/4 lb unsalted butter\r",
            "Salt\r",
            "1\/4 tsp black pepper"
    ],
    steps: [
      "Combine tomatoes, juice\/and or possibly stock in saucepan. Simmer 30 min. Puree, along with the basil leaves, in small batches, in blender or food processor or use an immersion blender in the pan.\r\n\r\nReturn to saucepan and add in cream and butter, while stirring over low heat. Garnish with basil leaves and serve with your favorite bread.",
      

    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm87',
    calories:'32',
    categories: [
      'c10',
    ],
    title: "Old Fashion Vegetable Soup",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability:Affordability.pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://images.media-allrecipes.com/userphotos/8643443.jpg',
    duration: 45,
    ingredients: [
      "1 pound ground beef\r",
            "1 cup onion, chopped\r",
            "1 cup potatoes, diced\r",
            "1 cup carrots, sliced\r",
            "1 cup celery, diced\r",
            "2 16oz can diced tomatoes in juice (or substitute 2 small cans of tomato sauce)\r",
            "4 cup water\r",
            "1\/4 tsp dried basil, crushed\r",
            "1\/4 tsp dried thyme\r",
            "1 bay leaf\r",
            "1\/2 tsp salt\r",
            "1\/4 tsp pepper\r",
            "1\/2 tsp garlic powder\r",
            "2 tablespoon beef bouillon\r",
            "1 16oz can corn\r",
            "1 16oz can green beans\r",
            "1 16oz can green peas"
      
    ],
    steps: [
      
       "In a large soup pot, brown ground beef and onion, drain off fat.  Add remaining ingredients EXCEPT for last 3 items (canned vegetables).  Simmer on low heat until vegetables are tender, about an hour.  Add canned vegetables and simmer 5 minutes.  Remove bay leaf and serve.",

    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm88',
    calories:'56',
    categories: [
      'c10',
    ],
    title: "Lentil Soup",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://frommybowl.com/wp-content/uploads/2020/04/Feel_Good_Red_Lentil_Soup_Vegan_GlutenFree_FromMyBowl-8-scaled.jpg',
    duration: 40,
    ingredients: [
      
        "2 tablespoon olive oil\r",
            "1 cup onion, chopped\r",
            "1\/2 cup carrot, finely chopped\r",
            "1\/2 cup celery, finely chopped\r",
            "2 teaspoon kosher salt\r",
            "1 pound lentils, picked and rinsed\r",
            "1 cup tomatoes, peeled and chopped\r",
            "2 quart vegetable broth\r",
            "1\/2 teaspoon coriander, freshly ground\r",
            "1\/2 teaspoon cumin, freshly ground and toasted\r",
            "1\/2 teaspoon black pepper, freshly ground"   
    ],
    steps: [
      "Place the olive oil into a large 6-quart Dutch oven and set over medium heat. Once hot, add the onion, carrot, celery and salt and sweat until the onions are translucent, approximately 6 to 7 minutes. Add the lentils, tomatoes, broth, coriander, cumin and pepper and stir to combine. Increase the heat to high and bring just to a boil. Reduce the heat to low, cover and cook at a low simmer until the lentils are tender, approximately 35 to 40 minutes. Using a stick blender, puree to your preferred consistency (optional). Serve immediately.",

    ],
    isGlutentFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm89',
    calories:'34',
    categories: [
      'c10'
      //     'c5',
      // 'c10',
    ],
    title:"Smoky Sweet-Potato Soup" ,
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cooknourishbliss.com/wp-content/uploads/2016/06/Sweet_potato_corn_chowder-480x480.jpg',
    duration: 45,
    ingredients: [
      "3 tbsp olive oil\r",
            "3 clove garlic\r",
            "1 small leek, white and pale-green parts only, thinly slice and rinsed well\r",
            "1 tart green apple, cut into 1\" chunks\r",
            "1 celery stalk, thinly sliced\r",
            "1 tsp ginger, finely grated\r",
            "2 lb sweet potatoes, peeled and cut into 1\" cubes\r",
            "6 cup chicken stock\r",
            "1\/2 chipotle in adobo sauce\r",
            "salt and pepper\r",
            "1\/2 cup salted pepitas"
           
    ],
    steps: [
      "Heat oil in a large pot over medium heat.  Cook garlic and leek until soft and translucent, about 4 minutes.  Add apple, celery, and ginger, and cook for 3 minutes.  Add sweet potatoes and stock, and simmer until sweet potatoes are tender, about 15 minutes.  \r\n\r\nAdd chipotle chiles.  Puree until smooth.  Season with salt and pepper.  Sprinkle with pepitas before serving.",

    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm90',
    calories:'23',
    categories: [
      'c10',
    ],
    title: "French onion soup",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://www.foodiecrush.com/wp-content/uploads/2012/12/French-Onion-Soup-foodiecrush.com-027-1.jpg',
    duration: 240,
    ingredients: [
      "4 tablespoon unsalted butter\r",
            "2 pound yellow onions, sliced 1\/4-inch into half circles\r",
            "1 teaspoon sugar\r",
            "1 tablespoon all-purpose flour\r",
            "1\/2 cup dry sherry\r",
            "3 cup beef stock\r",
            "2 teaspoon fresh thyme, chopped or 3\/4 teaspoon dried thyme\r",
            "Salt and freshly ground black pepper\r",
            "1 small French baguette, sliced crosswise into 1\/2-inch pieces\r",
            "8 ounce Gruyere cheese, grated on the large holes of a box grater (about 3 cups)"
      

    ],
    steps: [
      "Melt butter in a large Dutch oven or heavy pot on medium-low heat. Add onions. Spread them out in as thin a layer as possible. Sprinkle with sugar, and cook, stirring just as needed to keep onions from sticking, until they are melting and soft, golden brown, and beginning to caramelize, about 1 hour. (If doing 2 servings, cook for only 30-40 minutes.)\r\n\r\nSprinkle flour over onions, and stir to coat. Add sherry, stock, and thyme, and bring to a simmer. Cook, partially covered, for about 30 minutes, to allow the flavors to combine. Season with salt and pepper to taste.  (If doing 2 servings, cook for only 15 minutes.)\r\n\r\nMeanwhile, lightly toast bread under a broiler; set aside. Ladle hot soup into six ovenproof bowls. Arrange the bowls on a baking pan. Place 1 or 2 slices of toasted bread over each bowl of soup. Sprinkle 1\/2 cup grated cheese over bread in each bowl, and place under the broiler until cheese is melted and crusty brown around the edges. Watch carefully that bread doesn't burn.  \r\n\r\n(If you don't have broiler-proof bowls, instead lightly toast the bread, then top with the cheese and broil until bubbly and browned, 4-5 minutes. Serve the soup in an ordinary bowl, topped with the bread slices.)\r\n\r\nServe immediately.",
     
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm91',
    calories:'224',
    categories: [
      'c10',
    ],
    title:"Red lentil soup with sage and bacon",
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimagesvc.meredithcorp.io%2Fv3%2Fmm%2Fimage%3Furl%3Dhttps%253A%252F%252Fassets.marthastewart.com%252Fstyles%252Fwmax-300%252Fd16%252Fa99807_0203_soup%252Fa99807_0203_soup_xl.jpg%253Fitok%253DLRMd-UZi&w=272&h=272&c=sc&poi=face&q=85',
    duration: 80,
    ingredients: [
       "5 slices bacon, (4 ounces), cut into 1\/4-inch dice\r",
            "2 clove garlic, finely chopped\r",
            "1 medium onion, finely chopped\r",
            "4 medium carrots, cut into 1\/4-inch dice\r",
            "6 fresh sage leaves, minced, plus more for garnish\r",
            "1 1\/2 cup red lentils\r",
            "1 teaspoon ground cumin\r",
            "5 cup homemade or low-sodium canned chicken stock"
      
    ],
    steps: [
      
        "In a large saucepan over medium-high heat, cook the bacon until crisp, about 3 minutes. Transfer the bacon to a piece of paper towel, and set aside. Discard all but 1 tablespoon bacon drippings from pan.\r\n\r\nAdd the garlic, onion, and carrots to saucepan. Cook vegetable mixture over medium heat until tender, about 5 minutes. Add the minced sage, and cook 1 minute more.\r\n\r\nAdd the lentils, cumin, and chicken stock; stir to combine. Simmer until lentils are cooked and falling apart, 20 to 25 minutes.\r\n\r\nTo serve, divide the hot soup among four soup plates, and garnish with the reserved bacon and additional sage.",
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm92',
    calories:'584',
    categories: [
      'c10',
    ],
    title:"Green pea soup with cheddar scallion panini" ,
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fassets.marthastewart.com%2Fstyles%2Fwmax-750%2Fd46%2Fa100275_1103-broccoli-soup-with-cheddar-toasts%2Fa100275_1103-broccoli-soup-with-cheddar-toasts_horiz.jpg%3Fitok%3DCqlvd5om',
    duration: 35,
    ingredients: [
      "3 tablespoon butter\r",
            "4 green onions, white and green parts separated and thinly sliced\r",
            "30 oz frozen peas\r",
            "2 cup chicken broth\r",
            "3 cup water\r",
            "6 oz shredded sharp white cheddar\r",
            "8 slices sandwich bread\r",
            "Coarse salt and ground pepper\r",
            "1 tablespoon fresh lemon juice"
    ],
    steps: [
      "In a large saucepan, heat 1 tablespoon butter over medium. Add scallion whites, and cook, stirring, until softened, 1 to 2 minutes. Add peas, broth, and water. Bring to a boil; reduce heat to a simmer. Cook until peas are tender, about 5 minutes; set aside.\r\n\r\nIn a medium bowl, toss cheddar with scallion greens. Make 4 sandwiches with cheddar mixture and bread.\r\n\r\nIn a large skillet, heat 1 tablespoon butter over medium-low. Place sandwiches in skillet, and cook until golden, 3 to 4 minutes per side, adding remaining tablespoon butter to skillet to cook second side.\r\n\r\nWorking in batches, puree soup in a blender until smooth (filling blender only halfway to prevent spattering). If necessary, adjust consistency with a little bit of water. Season with salt, pepper, and lemon juice. Slice each panini into four \"fingers, and serve with soup.",
     
    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm93',
    calories:'584',
    categories: [
      'c10',
    ],
    title:"Broccoli soup with cheddar toasts" ,
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://assets.marthastewart.com/styles/wmax-750/d46/a100275_1103-broccoli-soup-with-cheddar-toasts/a100275_1103-broccoli-soup-with-cheddar-toasts_horiz.jpg?itok=Cqlvd5om',
    duration: 45,
    ingredients: [
      "1 1\/2 tablespoon extra-virgin olive oil\r",
            "1 medium onion, coarsely chopped\r",
            "2 garlic cloves, coarsely chopped\r",
            "2 bunches broccoli (1 bunch \u2248 1\u00bdlbs), stems and florets chopped separately into 1\/2-inch pieces\r",
            "7 cup low-sodium chicken stock\r",
            "1 teaspoon coarse salt\r",
            "1 cup skim milk\r",
            "1\/8 teaspoon cayenne pepper\r",
            "2 ounce extra-sharp cheddar cheese, grated or crumbled (about 1\/2 cup)\r",
            "8 thin slices crusty baguette"
     
    ],
    steps: [
      "Heat oil in a large pot over medium heat until hot but not smoking. Add onion, garlic, and broccoli stems; cover, and cook, stirring occasionally, until vegetables are soft, about 15 minutes. Add stock and salt; cover, raise heat to medium-high, and bring to a boil. Add broccoli florets; reduce heat, and simmer, uncovered, until florets are just tender, about 10 minutes.\r\n\r\nRemove soup from heat, and let cool, about 10 minutes. Fill a blender no more than halfway to puree soup in batches until smooth. Return soup to pot; stir in milk and cayenne. Cook over medium heat until heated through (do not boil).\r\n\r\nHeat broiler. Divide cheese among bread slices; toast under broiler until melted and golden brown, 45 to 60 seconds. Divide soup among bowls. Top each bowl with a cheese toast, and serve.",

    ],
    isGlutentFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

//briyani
Meal(
    id: 'm94',
    calories:'105',
    categories: 
      [
      'c11',
      ],
    title: 'Chicken Briyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.indianhealthyrecipes.com/wp-content/uploads/2019/02/chicken-biryani-recipe-500x500.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm95',
    calories:'381',
    categories: 
      [
      'c11',
      ],
    title: 'mutton biriyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.cubesnjuliennes.com/wp-content/uploads/2021/03/Best-Mutton-Biryani-Recipe.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm96',
    calories:'555',
    categories: 
      [
      'c11',
      ],
    title: 'beef briyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://nishkitchen.com/wp-content/uploads/2015/03/Beef-Biryani-1B-480x360.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm97',
    calories:'410',
    categories: 
      [
      'c11',
      ],
    title: 'egg briyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://ministryofcurry.com/wp-content/uploads/2019/11/egg-biryani-3-1.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm98',
    calories:'241',
    categories: 
      [
      'c11',
      ],
    title: 'fish briyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://i.ytimg.com/vi/JOzvE2njVo8/maxresdefault.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm99',
    calories:'241',
    categories: 
      [
      'c11',
      ],
    title: 'veg briyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://recipesofhome.com/wp-content/uploads/2020/06/veg-biryani-recipe-735x490.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm100',
    calories:'428',
    categories: 
      [
      'c11',
      ],
    title: 'mushroom briyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.indianveggiedelight.com/wp-content/uploads/2019/09/mushroom_biryani.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: '101',
    // rid: 'rm3',
    // time: '24 mints',
    calories: '296',
    categories: 
      [
      'c11',
      ],
    title: 'Prawn briyani',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.cubesnjuliennes.com/wp-content/uploads/2020/12/Prawn-Biryani-Recipe.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),

  //rice
  Meal(
    id: 'm102',
    calories:'266',
    categories: 
      [
      'c12',
      ],
    title: 'Tomatto rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.seriouseats.com/thmb/1-lucdS7A6rTh5TUs…icky-wasik-7-617f5404fb49463a8b37e02df7d78def.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm103',
    calories:'212',
    categories: 
      [
      'c12',
      ],
    title: 'Pongal',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        '	https://hips.hearstapps.com/hmg-prod.s3.amazonaws.…112-risotto-rice-0151-landscape-pf-1574723947.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm104',
    calories:'329',
    categories: 
      [
      'c12',
      ],
    title: 'Chicken Fried rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://img.buzzfeed.com/thumbnailer-prod-us-east-…7114024a/BFV43575_PartyRiceAroundAfrica-FB-V2.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm105',
    calories:'175',
    categories: 
      [
      'c12',
      ],
    title: 'Lemon Rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.themediterraneandish.com/wp-content/uploads/2020/10/tahdig-persian-rice-recipe-8.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm106',
    calories:'215',
    categories: 
      [
      'c12',
      ],
    title: 'Veg Fried Rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        '	https://www.cheftariq.com/wp-content/uploads/2020/04/mansaf-4-1.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm107',
    calories:'225',
    categories: 
      [
      'c12',
      ],
    title: 'Ghee rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        '	https://cafedelites.com/wp-content/uploads/2018/05/Jambalaya-IMAGE-3.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm108',
    calories:'290',
    categories: 
      [
      'c12',
      ],
    title: 'Coconut Rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.simplyrecipes.com/thmb/kuFvxBY8s3avWVI…a-HORIZONTAL-ce4d8fe93ec045c0a868ec065f49800a.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm109',
    calories:'329',
    categories: 
      [
      'c12',
      ],
    title: 'Shrimp Fried Rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.archanaskitchen.com/images/archanaskit…pendance_Day_Carrot_Palak_and_Coconut_Rice-14.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm110',
    calories:'45',
    categories: 
      [
      'c12',
      ],
    title: 'Vegetable Fried Rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        '	https://www.whiskaffair.com/wp-content/uploads/2017/11/Sweet-zafrani-Pulao-4-500x375.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm111',
    calories:'259',
    categories: 
      [
      'c12',
      ],
    title: 'brown basmati rice pilaf',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        '	https://www.sanjeevkapoor.com/UploadFiles/RecipeImages/Brown_Basmati_Pulao_foodfood.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),
  Meal(
    id: 'm112',
    calories:'376',
    categories: 
      [
      'c12',
      ],
    title: 'Curd Rice',
    Recipes:[
      {
        'name': "curry1"
      },
      {
        'name':'curry2'
      }
    ],
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.indianveggiedelight.com/wp-content/uploads/2019/09/mushroom_biryani.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutentFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true, 
  ),

];
