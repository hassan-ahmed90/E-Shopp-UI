import 'package:e_cmmerce_hey_flutter/availble_size.dart';
import 'package:e_cmmerce_hey_flutter/product.dart';
import 'package:flutter/material.dart';
class DetailedScreen extends StatelessWidget {

  final Product product;
  const DetailedScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailed Screen",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red.shade100,
                ),
                child: Image.asset(product.image,
                  fit: BoxFit.cover,),
              )
            ],
          ),
          SizedBox(height: 36,),
          Container(
            padding: EdgeInsets.all(20),
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),

              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name.toUpperCase(),style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('\$''${product.price}',style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),

                  ],
                ),
                SizedBox(height: 20,),
                Text(product.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                Text("Availble Sizes",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),),
                SizedBox(height: 20,),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AvailbleSize(size: "US 6"),
                    AvailbleSize(size: "US 7"),
                    AvailbleSize(size: "US 8"),
                    AvailbleSize(size: "US 9"),

                  ],
                ),
                SizedBox(height: 20,),
                Text("Availble Colour",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                )
              ],
            ),
          )

        ],
      ),

    );
  }
}
