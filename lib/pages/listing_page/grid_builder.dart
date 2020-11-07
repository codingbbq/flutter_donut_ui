import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/product.model.dart';
import 'package:flutter_donut_ui/services/list.service.dart';
import 'package:flutter_donut_ui/utils/color_management.dart';

class ProductGridBuilder extends StatefulWidget {
  @override
  _ProductGridBuilderState createState() => _ProductGridBuilderState();
}

class _ProductGridBuilderState extends State<ProductGridBuilder> {
  Future<List<ProductList>> fetchProducts() async {
    final response = await ListAPI().fetchProducts();
    if (response.statusCode == 200) {
      return productListFromJson(response.body);
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<ProductList>> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          top: 20.0,
        ),
        child: FutureBuilder<List<ProductList>>(
          future: futureProduct,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 30.0,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 30.0,
                  childAspectRatio: 0.70,
                ),
                itemBuilder: (BuildContext context, int index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                          decoration: BoxDecoration(
                            color: ColorManager.hexToColor(
                                snapshot.data[index].color),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            r"$" + snapshot.data[index].price.toString(),
                            style: TextStyle(
                              color: ColorManager.darken(Colors.red, .4),
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/item',
                              arguments: snapshot.data[index]);
                        },
                        child: Column(
                          children: <Widget>[
                            // Donut picture
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                snapshot.data[index].img,
                                fit: BoxFit.contain,
                                width: 100,
                                height: 100,
                              ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),

                            // Donut name
                            Text(
                              snapshot.data[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            // Donut category
                            Text(
                              snapshot.data[index].category,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 25.0,
                            ),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 10.0,
                            ),
                            child: Text(
                              snapshot.data[index].rating.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("Error");
            }
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                strokeWidth: 2.0,
              ),
            );
          },
        ),
      ),
    );
  }
}
