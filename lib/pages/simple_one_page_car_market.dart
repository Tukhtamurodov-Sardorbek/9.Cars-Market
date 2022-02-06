import 'package:flutter/material.dart';
import 'market/market_class.dart';

class SinglePageMarket extends StatefulWidget {
  const SinglePageMarket({Key? key}) : super(key: key);
  static const String id = 'simple_one_page';

  @override
  _SinglePageMarketState createState() => _SinglePageMarketState();
}

class _SinglePageMarketState extends State<SinglePageMarket> {
  List<Car> cars = [
    Car(name: 'Car#1',
        type: 'Electric',
        media: 'assets/market/img_0.png',
        price: '\$132 000',
        category: 'red'),
    Car(name: 'Car#2',
        type: 'Electric',
        media: 'assets/market/img_1.png',
        price: '\$86 500',
        category: 'blue'),
    Car(name: 'Car#3',
        type: 'Electric',
        media: 'assets/market/img_2.png',
        price: '\$46 000',
        category: 'w'),
    Car(name: 'Car#4',
        type: 'Electric',
        media: 'assets/market/img_3.png',
        price: '\$45 000',
        category: 'w'),
    Car(name: 'Car#5',
        type: 'Electric',
        media: 'assets/market/img_4.png',
        price: '\$60 000',
        category: 'blue'),
    Car(name: 'Car#6',
        type: 'Electric',
        media: 'assets/market/img_5.png',
        price: '\$150 000',
        category: 'green'),
    Car(name: 'Car#7',
        type: 'Electric',
        media: 'assets/market/img_6.png',
        price: '\$100 000',
        category: 'w'),
    Car(name: 'Car#8',
        type: 'Electric',
        media: 'assets/market/img_7.png',
        price: '\$35 000',
        category: 'w'),
    Car(name: 'Car#9',
        type: 'Electric',
        media: 'assets/market/img_8.png',
        price: '\$50 000',
        category: 'w'),
    Car(name: 'Car#10',
        type: 'Electric',
        media: 'assets/market/img_9.png',
        price: '\$132 000',
        category: 'red'),

    Car(name: 'Car#11',
        type: 'Electric',
        media: 'assets/market/img_10.png',
        price: '\$96 500',
        category: 'green'),
    Car(name: 'Car#12',
        type: 'Electric',
        media: 'assets/market/img_11.png',
        price: '\$58 000',
        category: 'blue'),
    Car(name: 'Car#13',
        type: 'Electric',
        media: 'assets/market/img_12.png',
        price: '\$95 000',
        category: 'red'),
    Car(name: 'Car#14',
        type: 'Electric',
        media: 'assets/market/img_13.png',
        price: '\$108 000',
        category: 'red'),
    Car(name: 'Car#15',
        type: 'Electric',
        media: 'assets/market/img_14.png',
        price: '\$75 000',
        category: 'blue'),
    Car(name: 'Car#16',
        type: 'Electric',
        media: 'assets/market/img_15.png',
        price: '\$86 000',
        category: 'green'),
    Car(name: 'Car#17',
        type: 'Electric',
        media: 'assets/market/img_16.png',
        price: '\$83 000',
        category: 'blue'),
    Car(name: 'Car#18',
        type: 'Electric',
        media: 'assets/market/img_17.png',
        price: '\$102 000',
        category: 'w'),
    Car(name: 'Car#19',
        type: 'Electric',
        media: 'assets/market/img_18.png',
        price: '\$93 000',
        category: 'red'),
    Car(name: 'Car#20',
        type: 'Electric',
        media: 'assets/market/img_19.png',
        price: '\$130 000',
        category: 'red'),

    Car(name: 'Car#21',
        type: 'Electric',
        media: 'assets/market/img_20.png',
        price: '\$99 500',
        category: 'red'),
    Car(name: 'Car#22',
        type: 'Electric',
        media: 'assets/market/img_21.png',
        price: '\$68 000',
        category: 'blue'),
    Car(name: 'Car#23',
        type: 'Electric',
        media: 'assets/market/img_22.png',
        price: '\$55 000',
        category: 'blue'),
    Car(name: 'Car#24',
        type: 'Electric',
        media: 'assets/market/img_23.png',
        price: '\$35 000',
        category: 'w'),
    Car(name: 'Car#25',
        type: 'Electric',
        media: 'assets/market/img_24.png',
        price: '\$37 000',
        category: 'w'),
    Car(name: 'Car#26',
        type: 'Electric',
        media: 'assets/market/img_25.png',
        price: '\$60 000',
        category: 'w'),
    Car(name: 'Car#27',
        type: 'Electric',
        media: 'assets/market/img_26.png',
        price: '\$35 000',
        category: 'w'),
    Car(name: 'Car#28',
        type: 'Electric',
        media: 'assets/market/img_27.png',
        price: '\$40 000',
        category: 'w'),
    Car(name: 'Car#29',
        type: 'Electric',
        media: 'assets/market/img_28.png',
        price: '\$49 000',
        category: 'w'),
    Car(name: 'Car#30',
        type: 'Electric',
        media: 'assets/market/img_29.png',
        price: '\$45 000',
        category: 'w'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.red,
            title: const Text('Cars'),
            centerTitle: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none_outlined),
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 18),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Colors.red.shade400
              ),
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Red'),
                Tab(text: 'Blue'),
                Tab(text: 'Green'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: cars.length,
                  itemBuilder: (context, index) {
                    return _productItem(cars[index]);
                  },
                ),
              ),
              Container(),
              Container(),
              Container(),
            ],
          ),
        )
    );
  }

  // Widget _card(Car car){
  //   return Card(
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.all(Radius.circular(80))
  //     ),
  //     child: Container(
  //       height: MediaQuery.of(context).size.height * 0.4,
  //       width: MediaQuery.of(context).size.width,
  //       decoration: BoxDecoration(
  //         borderRadius: const BorderRadius.all(Radius.circular(20)),
  //         image: DecorationImage(
  //           image: AssetImage(car.media),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //       child: Container(
  //         decoration: BoxDecoration(
  //           gradient: LinearGradient(
  //             begin: AlignmentDirectional.bottomCenter,
  //             end: Alignment.center,
  //             colors: [
  //               Colors.black.withOpacity(0.8),
  //               Colors.black.withOpacity(0.1),
  //             ]
  //           )
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.all(10.0),
  //           child: Column(
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children:
  //                   [
  //                     Column(
  //                       children: [
  //                         Text(car.name, style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
  //                         const SizedBox(height: 10),
  //                         Text(car.mode, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
  //                       ],
  //                     ),
  //                     MaterialButton(
  //                       color: Colors.white,
  //                       height: 40,
  //                       minWidth: 40,
  //                       shape: CircleBorder(),
  //                       child: const Icon(Icons.favorite_border_outlined),
  //                       onPressed: (){},
  //                     )
  //                   ]
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Card _productItem(Car car) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        height: 240,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(car.media),
                fit: BoxFit.cover
            )
        ),
        child: Container(
            padding: const EdgeInsets.only(
                left: 20, bottom: 20, top: 15, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.1),
                  ],
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(car.name, style: TextStyle(color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),),
                        SizedBox(width: 10),
                        Text(car.type, style: TextStyle(color: Colors.red.shade300,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(car.price, style: const TextStyle(color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),),
                  ],
                ),
                MaterialButton(
                    minWidth: 35,
                    height: 35,
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    onPressed: () {
                      setState(() {
                        car.isLiked = !car.isLiked;
                      });
                    },
                    child: car.isLiked ? const Icon(
                        Icons.favorite, color: Colors.white) : const Icon(
                        Icons.favorite_border, color: Colors.white),
                    color: Colors.red.shade300)
              ],
            )
        ),
      ),
    );
  }
}