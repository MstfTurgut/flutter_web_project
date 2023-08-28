import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../decoration/image_with_frame.dart';


class ShowupWidgetMobile extends StatelessWidget {
  const ShowupWidgetMobile({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 45, 63, 73)),
          onPressed: function,
          child: Text(
                  productName,
                  style: GoogleFonts.raleway(color: Colors.white, fontSize: 22),
                ),
        ),
        const SizedBox(height: 20,),
        Column(
          children: [
            ImageWithFrame(width: size.width * 0.85, height: size.height * 0.3,imagePath: image1Path),
            const SizedBox(height: 30,),
            ImageWithFrame(width: size.width * 0.85, height: size.height * 0.3,imagePath: image2Path),
            const SizedBox(height: 30,),
            ImageWithFrame(width: size.width * 0.85, height: size.height * 0.3,imagePath: image3Path),
              
          ],
        ),
      ],
    );
  }
}
