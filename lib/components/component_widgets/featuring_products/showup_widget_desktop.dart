import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../decoration/image_with_frame.dart';


class ShowupWidgetDesktop extends StatelessWidget {
  const ShowupWidgetDesktop({
    super.key,
    required this.productName,
    required this.size,
    required this.function,
    required this.image1Path,
    required this.image2Path,
    required this.image3Path,
  });

  final String image1Path;
  final String image2Path;
  final String image3Path;
  final String productName;
  final Size size;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 35, 49, 57)),
            onPressed: function,
            child: Text(
                    productName,
                    style: GoogleFonts.raleway(color: Colors.white, fontSize: 23),
                  ),
          ),
          const SizedBox(height: 40,),
          Row(
            children: [
              ImageWithFrame(width: size.width * 0.27, height: size.height * 0.5,imagePath: image1Path),
              SizedBox(width: size.width * 0.02,),
              ImageWithFrame(width: size.width * 0.27, height: size.height * 0.5,imagePath: image2Path),
              SizedBox(width: size.width * 0.02,),
              ImageWithFrame(width: size.width * 0.27, height: size.height * 0.5,imagePath: image3Path),
                
            ],
          ),
        ],
      ),
    );
  }
}
