import 'package:favourites/provider/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class result extends StatelessWidget {
  const result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List itemstore = object.favoriteitem;
    return Scaffold(
      appBar: AppBar(
        title: Text("FAVORITES"),
      ),
       body:  SingleChildScrollView(
          child:
          ListView.builder(
            shrinkWrap: true,
              itemCount: itemstore.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    trailing:  IconButton(
                        onPressed: (){
                          object.favorites(itemstore[index]);
                        },
                        icon: object.iconchange(itemstore[index])
                            ? Icon(Icons.favorite,color: Colors.red,)
                            :Icon(Icons.favorite_border,color: Colors.black,)
                    ),

                    title: Text(itemstore[index]));
              }),

        )
    );
  }
}
