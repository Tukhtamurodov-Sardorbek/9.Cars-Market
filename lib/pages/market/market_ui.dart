import 'package:flutter/material.dart';
import 'market_cart.dart';
import 'market_class.dart';
import 'market_liked.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);
  static const String id = 'market_page';

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  int inCart = 0, number = 0, dec = 0;
  bool sortByColorName = false;
  List<Car> sortedByColor = [];
  List<Car> cars = [
    Car(name: 'Car#1', type: 'Fuel', media: 'assets/market/img_0.png', price: '\$132 000', category: 'red'),
    Car(name: 'Car#2', type: 'Electric', media: 'assets/market/img_1.png', price: '\$86 500', category: 'blue'),
    Car(name: 'Car#3', type: 'Fuel', media: 'assets/market/img_2.png', price: '\$46 000', category: 'w'),
    Car(name: 'Car#4', type: 'Hybrid', media: 'assets/market/img_3.png', price: '\$45 000', category: 'w'),
    Car(name: 'Car#5', type: 'Electric', media: 'assets/market/img_4.png', price: '\$60 000', category: 'blue'),
    Car(name: 'Car#6', type: 'Fuel', media: 'assets/market/img_5.png', price: '\$150 000', category: 'green'),
    Car(name: 'Car#7', type: 'Hybrid', media: 'assets/market/img_6.png', price: '\$100 000', category: 'w'),
    Car(name: 'Car#8', type: 'Electric', media: 'assets/market/img_7.png', price: '\$35 000', category: 'w'),
    Car(name: 'Car#9', type: 'Hybrid', media: 'assets/market/img_8.png', price: '\$50 000', category: 'w'),
    Car(name: 'Car#10', type: 'Fuel', media: 'assets/market/img_9.png', price: '\$132 000', category: 'red'),

    Car(name: 'Car#11', type: 'Fuel', media: 'assets/market/img_10.png', price: '\$96 500', category: 'green'),
    Car(name: 'Car#12', type: 'Fuel', media: 'assets/market/img_11.png', price: '\$58 000', category: 'blue'),
    Car(name: 'Car#13', type: 'Fuel', media: 'assets/market/img_12.png', price: '\$95 000', category: 'red'),
    Car(name: 'Car#14', type: 'Hybrid', media: 'assets/market/img_13.png', price: '\$108 000', category: 'red'),
    Car(name: 'Car#15', type: 'Electric', media: 'assets/market/img_14.png', price: '\$75 000', category: 'blue'),
    Car(name: 'Car#16', type: 'Fuel', media: 'assets/market/img_15.png', price: '\$86 000', category: 'green'),
    Car(name: 'Car#17', type: 'Fuel', media: 'assets/market/img_16.png', price: '\$83 000', category: 'blue'),
    Car(name: 'Car#18', type: 'Electric', media: 'assets/market/img_17.png', price: '\$102 000', category: 'w'),
    Car(name: 'Car#19', type: 'Hybrid', media: 'assets/market/img_18.png', price: '\$93 000', category: 'red'),
    Car(name: 'Car#20', type: 'Electric', media: 'assets/market/img_19.png', price: '\$130 000', category: 'red'),

    Car(name: 'Car#21', type: 'Electric', media: 'assets/market/img_20.png', price: '\$99 500', category: 'red'),
    Car(name: 'Car#22', type: 'Hybrid', media: 'assets/market/img_21.png', price: '\$68 000', category: 'blue'),
    Car(name: 'Car#23', type: 'Fuel', media: 'assets/market/img_22.png', price: '\$55 000', category: 'blue'),
    Car(name: 'Car#24', type: 'Electric', media: 'assets/market/img_23.png', price: '\$35 000', category: 'w'),
    Car(name: 'Car#25', type: 'Electric', media: 'assets/market/img_24.png', price: '\$37 000', category: 'w'),
    Car(name: 'Car#26', type: 'Fuel', media: 'assets/market/img_25.png', price: '\$60 000', category: 'w'),
    Car(name: 'Car#27', type: 'Hybrid', media: 'assets/market/img_26.png', price: '\$35 000', category: 'w'),
    Car(name: 'Car#28', type: 'Electric', media: 'assets/market/img_27.png', price: '\$40 000', category: 'w'),
    Car(name: 'Car#29', type: 'Electric', media: 'assets/market/img_28.png', price: '\$49 000', category: 'w'),
    Car(name: 'Car#30', type: 'Hybrid', media: 'assets/market/img_29.png', price: '\$45 000', category: 'w'),
  ];

  List<Car> sorted (String color){
    sortedByColor.clear();
    for(int i=0; i< cars.length; i++){
      if(cars[i].category == color){
        sortedByColor.add(cars[i]);
      }else {
        continue;
      }
    }
    return sortedByColor;
  }

  Future<void> _navigate() async{
    List<Car> newList = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Cart(products: cars)));
    if(newList.isNotEmpty){
      setState(() {
        cars = newList;
      });
    }
    inCart = 0;
    for(Car car in cars){
      if(car.isInCard){
        setState(() {
          inCart++;
        });
      }
    }
  }

  Future<void> _navigate2() async{
    List<Car> newList = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Likes(products: cars)));
    if(newList.isNotEmpty){
      setState(() {
        cars = newList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text('Cars'),
            centerTitle: false,
            actions: [
              const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 26,
              ),
              const SizedBox(width: 10),
              Center(
                child: SizedBox(
                  height: 55,
                  width: 40,
                  // color: Colors.green,
                  child: GestureDetector(
                    child: Stack(
                      children: [
                        const Center(child: Icon(Icons.shopping_cart, size: 30)),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: 25,
                              height: 25,
                              padding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                                ),
                            child: Center(child: Text(inCart < 1000 ? '$inCart' : '${inCart.toString()[0]}...', style: TextStyle(color: Colors.white, fontSize: inCart < 100 ? 16 : 14))),
                              ),
                          ),
                      ],
                    ),
                    onTap: _navigate,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert, size: 25,),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Favorites"),
                    onTap: _navigate2,
                  ),
                  const PopupMenuItem(
                    child: Text("Cards"),
                  ),
                ],
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 18),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Colors.grey.shade300
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
                child: RefreshIndicator(
                  onRefresh: () async {await Future.delayed(const Duration(seconds: 2));setState(() {
                    dec == 2 ? dec = 2 : dec++;
                  });},
                  child:
                  ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return _productItem(cars[10 * dec + index]);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: sorted('red').length,
                  itemBuilder: (context, index){
                    return _productItem(sorted('red')[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: sorted('blue').length,
                  itemBuilder: (context, index){
                    return _productItem(sorted('blue')[index]);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: sorted('green').length,
                  itemBuilder: (context, index){
                    return _productItem(sorted('green')[index]);
                  },
                ),
              ),
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
          padding: const EdgeInsets.only(left: 20, bottom: 20, top: 15, right: 10),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(car.name, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text(car.type, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  MaterialButton(
                    minWidth: 35,
                    height: 35,
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    onPressed: (){
                      setState(() {
                        car.isLiked = !car.isLiked;
                      });
                    },
                    child:
                    car.isLiked  ? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_border),
                    color: Colors.white)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(car.price, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                  MaterialButton(
                      minWidth: 35,
                      height: 35,
                      padding: EdgeInsets.zero,
                      shape: CircleBorder(),
                      onPressed: (){
                        setState(() {
                          car.isInCard = !car.isInCard;
                          car.isInCard ?  inCart++ : inCart--;
                        });
                      },
                      child: car.isInCard? const Icon(Icons.shopping_cart)
                          : const Icon(Icons.shopping_cart_outlined),
                      color: Colors.white)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
