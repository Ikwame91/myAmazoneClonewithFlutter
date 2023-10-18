import 'package:flutter/material.dart';
import 'package:myown_amazone_clone/pages/Account_screen.dart';
import 'package:myown_amazone_clone/pages/cart_screen.dart';
import 'package:myown_amazone_clone/pages/home_page.dart';
import 'package:myown_amazone_clone/pages/more_screen.dart';

const double kAppBarHeight = 80;

const String amazonLogoUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png";

const List<String> categoriesList = [
  "Prime",
  "Mobiles",
  "Fashion",
  "Electronics",
  "Home",
  "Fresh",
  "Appliances",
  "Books, Toys",
  "Essential"
];

const List<Widget> screens = [
  HomeScreen(),
  AccountScreen(),
  CartScreen(),
  MoreScreen()
];

const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];

const List<String> largeBanners = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> bannerContainer = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

//Dont even attemp to scroll to the end of this manually lmao
const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";

List<String> keysOfRating = [
  "Very bad",
  "Poor",
  "Average",
  "Good",
  "Excellent"
];

List<String> scrollImage = [
  'assets/images/pexels.jpg',
  'assets/images/ClassicCamera.png',
  'assets/images/camera.jpg',
  'assets/images/laptop1.jpg',
  'assets/images/laptop2.jpg',
];
List<String> shopByCategoryItems = [
  'Shop by Department',
  'Arts & Crafts',
  'Automative',
  'Baby',
  'Beauty & Personal Care',
  'Computers',
  'Books',
  'Digital Music',
  'Electronics',
  'Women\'s Fashion',
  'SMen\'s Fashion',
  'Girl\'s Fashion',
  'Boys\'s Fashion',
  'Health & Household',
  'Home & Kitchen',
  'Industrial & Scientific',
  'Kindle Store',
  'Luggage',
  'Movies & Television',
  'Music, CDs & Vinyl',
  'Pet Supplies',
  'Prime Video',
  'Software',
  'Sports & Outdoors',
  'Tools & Improvements',
  'Toys & Games',
  'Video Games',
  'Deals',
];
