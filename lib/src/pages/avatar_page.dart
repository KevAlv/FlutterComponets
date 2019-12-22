import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://estaticos.muyinteresante.es/media/cache/760x570_thumb/uploads/images/article/55365e44066de9087b6a6239/frases-marx.jpg"),
              radius: 27,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              "https://tinta-roja.com/wp-content/uploads/2019/03/en-el-bicentenario-de-karl-marx.jpeg"),
              placeholder:AssetImage('assets/jar-loading.gif'),
        ),
      ),
    );
  }
}
