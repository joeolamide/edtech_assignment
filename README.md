# e_products

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.


Add the package to your pubspec.yaml file:
http: ^1.2.1
cached_network_image: ^3.3.1

Starting point of my application

import 'package:e_products/screen/product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductListScreen(),
    );![4](https://github.com/joeolamide/edtech_assignment/assets/65108926/4fa730f5-da57-4b4c-b079-c26ebe75a1a4)

  }
}



here is screenshot:
![2](https://github.com/joeolamide/edtech_assignment/assets/65108926/185eb319-6753-4633-8937-bce3959ca378)

![1](https://github.com/joeolamide/edtech_assignment/assets/65108926/a9492918-fd19-4ef9-9833-1eb12093ac21)
![3](https://github.com/joeolamide/edtech_assignment/assets/65108926/0878ade6-1350-4c79-9152-2c0ff562a9d8)
![4](https://github.com/joeolamide/edtech_assignment/assets/65108926/1c17df5a-eeb5-4b61-9d82-9e6d8940f3ca)

![6](https://github.com/joeolamide/edtech_assignment/assets/65108926/da1e1450-a361-4347-8afd-905d6efcc425)

![7](https://github.com/joeolamide/edtech_assignment/assets/65108926/9485df35-add2-4cfc-b7b4-809edcfe8ca4)
![5](https://github.com/joeolamide/edtech_assignment/assets/65108926/d59c8917-bf48-4e1b-8317-c214cc990865)

screen-video:
https://github.com/joeolamide/edtech_assignment/assets/65108926/063345dd-9371-4874-92e6-75e9899e5fc7


