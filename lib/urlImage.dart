import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class URLImage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return URLImageState();
  }
}

class URLImageState extends State<URLImage>{
  var imageUrls = [
    'https://scontent.fdad1-1.fna.fbcdn.net/v/t1.0-9/107612545_347143002965429_4920356494201708763_o.jpg?_nc_cat=100&_nc_sid=5b7eaf&_nc_ohc=FHGg0WJ-lsoAX9Q_bjQ&_nc_ht=scontent.fdad1-1.fna&oh=7b428709bc73ffbee1dcc7d5798ddc43&oe=5F2FD88A',
    'https://scontent.fdad1-1.fna.fbcdn.net/v/t1.0-9/107819585_347142632965466_1184630638111673237_o.jpg?_nc_cat=100&_nc_sid=5b7eaf&_nc_ohc=3YRjIVF082IAX8gFhu2&_nc_ht=scontent.fdad1-1.fna&oh=9a39f809343491b0d7835c554ce6d20f&oe=5F2E018C',
    "https://scontent.xx.fbcdn.net/v/t1.15752-9/107622400_330280894670520_1003797022346450125_n.jpg?_nc_cat=102&_nc_sid=b96e70&_nc_ohc=U5szKbrP24gAX_q9i1T&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=b1d95b6c17fc6cef0ee613ec05499888&oe=5F2F9D1B",
  ];
  var selectedImageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final cachedImage = new CachedNetworkImage(
      placeholder: (context, url) => new CircularProgressIndicator(),
      imageUrl: imageUrls[selectedImageIndex],
      height: 650.0,
    );
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load URL Image in Flutter"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Center(
                  child: cachedImage,
                )
              ],
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new RaisedButton(
                    child: new Text("Back"),
                    onPressed: (){
                      setState(() {
                        selectedImageIndex = selectedImageIndex <= 0 ?
                        selectedImageIndex: selectedImageIndex-1;
                      });
                    },
                  ),
                ),
                new Expanded(
                  child: new RaisedButton(
                    child: new Text("Next"),
                    onPressed: (){
                      setState(() {
                        selectedImageIndex = (selectedImageIndex >= imageUrls.length - 1) ?
                        selectedImageIndex: selectedImageIndex + 1;
                      });
                    },
                  ),
                )
              ],

            ),

          ],
        ),
      ),
    );
  }
}