import 'package:e_cmmerce_hey_flutter/detailed_scree.dart';
import 'package:e_cmmerce_hey_flutter/myproduct.dart';
import 'package:e_cmmerce_hey_flutter/product_card.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
int isSelected =0;
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Our Products",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategory(name: "All Products",index: 0),
                _buildCategory(name: "Jacketes",index: 1),
                _buildCategory(name: "Sneakers",index: 2),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(child:
            isSelected==0?
            _buildAllProduct():
                isSelected==1?_buildJackts():_buildSneakers(),
            ),
          ],
        ),
      )
    );
  }
  _buildCategory({required int index,required String name}){
    return GestureDetector(
      onTap: (){
        setState(() {
          isSelected=index;
        });

      },
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected==index? Colors.red : Colors.red.shade300,
        ),
        child: Center(child: Text(name,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}


_buildAllProduct()=> GridView.builder(
  itemCount: MyProduct.allProduct.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
  mainAxisSpacing: 12,
  crossAxisSpacing: 12),
scrollDirection: Axis.vertical,
  itemBuilder: (BuildContext context, int index) {
        final allProducts= MyProduct.allProduct[index];
        return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedScreen(product: allProducts)));
            },
            child: ProductCard(product: allProducts));
  },
);
_buildJackts()=> GridView.builder(
  itemCount: MyProduct.jacketList.length,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12),
  scrollDirection: Axis.vertical,
  itemBuilder: (context,index) {
    final jk= MyProduct.jacketList[index];
    return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>DetailedScreen(product: jk)));
        },
        child: ProductCard(product: jk));
  },
);
_buildSneakers()=> GridView.builder(
  itemCount: MyProduct.sneakerList.length,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: (100/140),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12),
  scrollDirection: Axis.vertical,
  itemBuilder: (context,index) {
    final sk= MyProduct.sneakerList[index];
    return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedScreen(product: sk)));
        },
        child: ProductCard(product: sk));
  },
);
