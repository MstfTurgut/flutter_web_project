import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';


class ShowupListButtons extends StatelessWidget {
  const ShowupListButtons({super.key});

  static final AutoScrollController autoScrollController = AutoScrollController();


  Future scrollToIndex(int index) async {
    await autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    autoScrollController.highlight(index);
  }
  

  @override
  Widget build(BuildContext context) {

    

    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);


    return isDeviceDesktop?
    Container(
      margin: EdgeInsets.only(left: size.width * 0.05),
      child: Row(
                    children: [
                      scrollerTextButton('-Plise Perde',0),
                      scrollerTextButton('-Metal Jaluzi Perde',1),
                      scrollerTextButton('-Ahşap Jaluzi Perde',2),
                      scrollerTextButton('-Stor Perde',3),
                      scrollerTextButton('-Zebra Perde',4),
                      scrollerTextButton('-Tül Dikey Perde',5),
                      scrollerTextButton('-Zip Perde',6),
                      scrollerTextButton('-Stor Dikey Perde',7),
                      scrollerTextButton('-Akordiyon Sineklik',8),
                    ],
                  ),
    )
    :Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
                    children: [
                      scrollerTextButton('-Plise Perde',0),
                      scrollerTextButton('-Metal Jaluzi Perde',1),
                      scrollerTextButton('-Ahşap Jaluzi Perde',2),
                      scrollerTextButton('-Stor Perde',3),
                      scrollerTextButton('-Zebra Perde',4),
                      scrollerTextButton('-Tül Dikey Perde',5),
                      scrollerTextButton('-Zip Perde',6),
                      scrollerTextButton('-Stor Dikey Perde',7),
                      scrollerTextButton('-Akordiyon Sineklik',8),
      
                    ],
                  ),
    );
  }

  TextButton scrollerTextButton(String title , int index) {
    return TextButton(
                      onPressed: () {
                      scrollToIndex(index);
  
                    }, child: Text(title , style: TextStyle(color: Colors.lightBlue[100],fontSize: 11),));
  }
}

