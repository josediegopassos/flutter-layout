import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        //color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            SearchBox(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Categorias",
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 90,
              child: CategoryList(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Mais vendidos",
                  style: Theme.of(context).textTheme.headline,
                ),
                FlatButton(
                  child: Text("Ver todos"),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 270,
              child: ProductList(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
