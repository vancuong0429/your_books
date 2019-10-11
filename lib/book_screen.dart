import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _BookState();

}

class _BookState extends State<BookScreen> with AutomaticKeepAliveClientMixin<BookScreen>{
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network("https://picsum.photos/264/400/?${DateTime.now().microsecond}"),
          SizedBox(height: 16,),
          Text("Less Than Zero", style: TextStyle(fontSize: 20, color: Colors.white),),
          SizedBox(height: 14,),
          Text("Bret Easton Ellis", style: TextStyle(fontSize: 16, color: Colors.white),)
        ],
      ),
    );
  }

}