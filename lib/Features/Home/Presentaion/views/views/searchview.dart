import 'package:flutter/material.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(
              
              backgroundColor:const WidgetStatePropertyAll(
                Colors.amber,
              ),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.all(10),
              ),
              leading: const Icon(Icons.search,color: Colors.white,),
              hintText: 'search',
              
              elevation: const WidgetStatePropertyAll(4.0),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
            ),
          )
        ],
      ),
    );
  }
}
