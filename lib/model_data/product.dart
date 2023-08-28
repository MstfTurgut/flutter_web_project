

class Product {
  String image;

  String productName;

  String productDescription;

  List<String> productImageSliderListForDetailedPage;

  bool doesHaveColorList;
  bool doesHaveMoreImages;

  List<String>? colorOptionsList;
  List<String>? colorOptionsList2;
  List<String>? colorOptionsList3;

  List<String>? moreImagesList;
 
  Product({
    this.moreImagesList,
    this.colorOptionsList,
    this.colorOptionsList2,
    this.colorOptionsList3,
    required this.image,
    this.doesHaveMoreImages = false,
    this.doesHaveColorList = false,
    this.productDescription = 'null',
    required this.productImageSliderListForDetailedPage,
    this.productName = 'null',

  });  
   
}