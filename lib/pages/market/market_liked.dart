import 'package:flutter/material.dart';
import 'market_class.dart';

class Likes extends StatefulWidget {
  static const String id = 'likes';
  final List<Car> products;
  const Likes({required this.products});

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {

  List<Car> cart = [];
  List<Car> _allLikes = [];
  List<Car> forCart(){
    for(Car product in widget.products){
      if (product.isInCard )
        cart.add(product);
      else
        continue;
    }
    return cart;
  }
  List<Car> forLikes(){
    for(Car product in widget.products){
      if (product.isLiked )
        _allLikes.add(product);
      else
        continue;
    }
    return _allLikes;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forCart();
    forLikes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context, widget.products);
          },
        ),
        title: Text('Favourites'),            centerTitle: true,
      ),
      body:
      _allLikes.isEmpty ? Container(color: Colors.red) : GridView.builder(
        itemCount: _allLikes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _cardForCart(_allLikes[index]);
        },
      ),
    );
  }

  Card _cardForCart(Car car) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
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
                      Text(car.name, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text(car.type, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  MaterialButton(
                      minWidth: 30,
                      height: 30,
                      padding: EdgeInsets.zero,
                      shape: CircleBorder(),
                      onPressed: (){
                        setState(() {
                          car.isLiked = false;
                          widget.products[widget.products.indexOf(car)].isLiked = false;
                          _allLikes.remove(car);
                        });
                      },
                      child: car.isLiked? const Icon(Icons.favorite, color: Colors.red,) : const Icon(Icons.favorite_border),
                      color: Colors.white)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(car.price, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                  MaterialButton(
                      minWidth: 30,
                      height: 30,
                      padding: EdgeInsets.zero,
                      shape: CircleBorder(),
                      onPressed: (){
                        setState(() {
                          car.isInCard = false;
                          widget.products[widget.products.indexOf(car)].isInCard = false;
                        });
                      },
                      child: car.isInCard? const Icon(Icons.shopping_cart) : const Icon(Icons.shopping_cart_outlined),
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
