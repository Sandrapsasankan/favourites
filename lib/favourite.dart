
import 'package:favourites/provider/provider_class.dart';
import 'package:favourites/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class favourite extends StatefulWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {

  List words = ['one','two','three','four','five','six','seven','eight'];
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(

        onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>result()));
        },label: Text('Favorites'),

      ),
      appBar: AppBar(
        title: Text("NUMBERS"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child:
        ListView.builder(
          shrinkWrap: true,
            itemCount:words.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  trailing:  IconButton(
                    onPressed: (){
                      object.favorites(words[index]);
                    },
                    icon: object.iconchange(words[index])
                      ? Icon(Icons.favorite,color: Colors.red,)
                        :Icon(Icons.favorite_border,color: Colors.black,)
                  ),

                  title: Text(words[index]));
            }),

      )
    );

  }
}
