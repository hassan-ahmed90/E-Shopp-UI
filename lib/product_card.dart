import 'package:e_cmmerce_hey_flutter/product.dart';
import 'package:flutter/material.dart';
class ProductCard extends StatefulWidget {

  final Product product;
  const ProductCard({super.key,required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.favorite_outline,color: Colors.red,)
            ],
          ),
          SizedBox(
            height: 130,
            width: 130,
            child: Image.asset(widget.product.image,
            fit: BoxFit.cover,),
          ),
          Text(widget.product.name,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold),),
          Text(widget.product.category,style: TextStyle(
            fontSize: 15,
          color: Colors.red),),
          Text('\$' '${widget.product.price}',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
        ],
      ),

    );
  }
}
