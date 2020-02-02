import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://pm1.narvii.com/7011/b4fc82f32f7d30885d469d9f7718b9ff42c92adcr1-642-421v2_128.jpg'),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
            'https://dam.smashmexico.com.mx/wp-content/uploads/2018/05/24100112/Stan-Lee.jpg',
          ),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
