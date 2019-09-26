import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:fullter_sina/routes/Application.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:fullter_sina/utils/navigation_title.dart';

class PreviewImageItem extends StatefulWidget {
  String url;

  PreviewImageItem({this.url});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PreviewImageItem();
  }
}

class _PreviewImageItem extends State<PreviewImageItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Navigation.forTitle("图片预览", Icon(Icons.keyboard_backspace)),
      body: Container(
          child: PhotoViewGallery.builder(
//        scrollPhysics: const BouncingScrollPhysics(),
        loadingChild: GestureDetector(
          onTap: () {
            Application.pop(context);
          },
          child: Container(
            child: Text("加载中"),
          ),
        ),
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions.customChild(
//            scaleStateController: ,
              child: Container(
                height: MediaQuery.of(context).size.height,
//                alignment: Alignment.center,
                color: Colors.black,
                child:
//                ListView(
//                  cacheExtent: MediaQuery.of(context).size.height,
//                  children: <Widget>[
                    Image.network(
                      widget.url,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        ;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
//                    )
//                  ],
                ),
              ),
              minScale: 1.0,
              maxScale: 3.0,
              childSize: MediaQuery.of(context).size);
        },
        itemCount: 1,
        onPageChanged: (a) {},
      )),
    );
  }
}
