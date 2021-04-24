import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color.fromRGBO(231, 222, 215, 1),
              height: mq.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios_rounded),
                        Icon(Icons.shopping_bag_outlined),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/perfume.png',
                    height: 200,
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                height: mq.height * 0.55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          child: Divider(
                            color: Colors.black38,
                            thickness: 3,
                          ),
                        ),
                      ),
                      Text(
                        'Chanel',
                        style: TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Eaude Toilette',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          Text(
                            '\$135.00',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(
                            color: Colors.black54,
                            height: 1.4,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Similar this',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Image.asset('assets/small1.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Image.asset('assets/small2.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Image.asset('assets/small3.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Image.asset('assets/small1.png'),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Icon(
                              Icons.favorite_border_sharp,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                '+Add To Cart',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
