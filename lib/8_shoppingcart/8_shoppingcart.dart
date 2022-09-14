import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/8_shoppingcart/components/shoppingcart_detail.dart';
import 'package:study_book_modu_ui_1/8_shoppingcart/components/shoppingcart_header.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){},
        ),
        SizedBox(width: 16,),
      ],
      elevation: 0.0,
    );
  }
}
