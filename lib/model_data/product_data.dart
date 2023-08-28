import 'package:nayis_home/model_data/product.dart';

class ProductData {
  static List<Product> allProducts = [
    Product(
        image: 'plise3',
        productName: 'Plise Perde',
        productDescription: 'Plise perdeler, modern tasarımlarıyla öne çıkan ve pratik kullanım sağlayan bir pencere kaplamasıdır. Estetik kumaş seçenekleri ve katlanabilir yapılarıyla hem şıklık hem de ışık kontrolü sunar. Farklı renk seçenekleriyle hem ev hem de işyeri gibi çeşitli mekanlarda mükemmel bir uyum sağlar.',
        productImageSliderListForDetailedPage: imageSlidersDataForPlisePerde,
        doesHaveColorList: true,
        doesHaveMoreImages: true,
        colorOptionsList: colorOptionsListForPlisePerde,
        colorOptionsList2: colorOptionsListForPlisePerde2,
        colorOptionsList3: colorOptionsListForPlisePerde3,
        moreImagesList: moreImagesListForPlisePerde,
        ),
    Product(
        image: 'metal-jaluzi3',
        productName: 'Metal Jaluzi Perde',
        productDescription: 'Daha çok ofis ve işyerlerinde tercih edilen metal jaluzi perdeler kullanıldıkları mekana modern bir görünüm sağlar. En büyük özelliği ışığı yönlendirme imkânına sahip olmasıdır. Slaytlar bombeli şekle sahip olduğundan dolayı tam olarak kapatıldığında içeriye ışık geçirmez.',
        productImageSliderListForDetailedPage: imageSlidersDataForMetalJaluziPerde,
        doesHaveColorList: true,
        colorOptionsList: colorOptionsListForMetalJaluziPerde),
    Product(
        image: 'ahsap-jaluzi1',
        productName: 'Ahşap Jaluzi Perde',
        productDescription: 'Malzemesi ahşap olduğundan, kullanılan mekanlarda doğal, dekoratif sıcak ve şık bir görünüm sağlar. Bir kontrol mekanizması sayesinde aşağı yukarı doğru çalışır. Işık yalıtımının yanında, %65 oranında ısı yalıtımı da gerçekleştirir. Hem tavana hem de duvara kolaylıkla monte edilebilir.',
        productImageSliderListForDetailedPage: imageSlidersDataForAhsapJaluziPerde,
        doesHaveMoreImages: true,
        doesHaveColorList: true,
        colorOptionsList: colorOptionsListForAhsapJaluziPerde,
        moreImagesList: moreImagesListForAhsapJaluzi),
    Product(
        image: 'stor1',
        productName: 'Stor Perde',
        productDescription: 'Stor perde kapalı mekanlarınıza derinlik, sadelik ve dizayn bütünlüğünü en güzel biçimde yansıtan perde sistemidir. Stor Perde aynı zamanda tüllerin arkasında güneşlik amaçlı veya tek başına dekoratif olarak da kullanılabilir. Birçok renk ve desen seçeneği ile dekoratif ihtiyaçlarınıza cevap verir.',
        productImageSliderListForDetailedPage: imageSlidersDataForStorPerde),
    Product(
        image: 'zebra1',
        productName: 'Zebra Perde',
        productDescription: 'Zebra Perde, sık dokunmuş kumaşlarla, tül kumaşların şeritler halinde aralıklı olarak dizilmesinden meydana gelmektedir.Kumaşın, stor perde gibi yukarı aşağı hareketiyle çalışan, gerektiğinde tül,gerektiğinde güneşlik gibi kullanılabilen işlevsel perde sistemidir.\n\nKullanımındaki kolaylığı sayesinde gün geçtikçe daha çok tercih edilmeye başlanılan zebra perdeler, modern ve klasik kumaş seçenekleriyle kullanıldıkları ortamlara ayrı bir şıklık getirmektedir.',
        productImageSliderListForDetailedPage: imageSlidersDataForZebraPerde),  
    Product(
        image: 'tul-dikey1',
        productName: 'Tül Dikey Perde',
        productDescription: 'Tül dikey perdeler, şık ve modern tasarımlarıyla mekanlarınıza ferahlık ve zarafet katarken aynı zamanda pratik kullanım sunar. Yatay hareketli mekanizması sayesinde istediğiniz miktarda ışık kontrolü ve hava sirkülasyonu sağlarken gizlilik de sağlar.  Mekanlarınıza estetik bir görünüm kazandırır ve tarzınızı yansıtır.',
        productImageSliderListForDetailedPage: imageSlidersDataForTulDikeyPerde),
    Product(
        image: 'zip1',
        productName: 'Zip Perde',
        productDescription: 'Zip perdeler, modern ve şık tasarımlarıyla yaşam alanlarınıza zarafet katarken aynı zamanda kullanım kolaylığı sağlar. Yüksek kaliteli kumaş ve dayanıklı zip sistemiyle donatılmış olan bu perdeler, mükemmel bir ışık kontrolü sunar. Sızdırmazlık özelliği sayesinde hava koşullarından etkilenmez ve enerji verimliliği sağlar. Kolay montaj imkanıyla hızlı bir şekilde uygulanır.', 
        productImageSliderListForDetailedPage: imageSlidersDataForZipPerde),
    Product(
        image: 'stor-dikey1',
        productName: 'Stor Dikey Perde',
        productDescription: 'Dikey perdeler daha çok ofis ve işyerlerinde tercih edilir. Dikey perdeler stor kumaşlar ve PVC malzemeler kullanılarak yapılmaktadır.. Dikey perdede renk ve desen seçenekleri oldukça geniştir. Eğimli alanlarda kullanılabilir. Dikey perdelerin en büyük özelliği ışığı yönlendirme imkânına sahip olmalarıdır.', 
        productImageSliderListForDetailedPage: imageSlidersDataForStorDikeyPerde),
    Product(
        image: 'akordiyon-sineklik1',
        productName: 'Akordiyon Sineklik',
        productDescription: 'Akordiyon sineklikler, pratik ve etkili bir şekilde evinizi sineklerden korurken ferah bir ortam sunar. Katlanabilir ve yerden tasarruf sağlayan yapısıyla pencere ve kapılarınıza kolayca uygulanabilir. Yüksek kaliteli malzemelerden üretilen akordiyon sineklikler, dayanıklılık ve uzun ömür sunar.', 
        productImageSliderListForDetailedPage: imageSlidersDataForAkordiyonSineklik),

  ];

  //ALL PRODUCTS LİSTESİNDEKİ İLK ÜÇ ÜRÜN FEATURİNG PRODUCTS'A DENK GELMEKTEDİR


  static final List<String> imageSlidersDataForHomepage = [
    'assets/main_carousel/1.jpg',
    'assets/main_carousel/2.jpg',
    'assets/main_carousel/3.jpg',
    'assets/main_carousel/4.jpg',
    'assets/main_carousel/5.jpg',
  ];


  static List<String> storeImages = [
    'assets/store/magaza-dis.jpg',
    'assets/store/magaza-ic.jpg',
    'assets/store/imalat1.jpg',
    'assets/store/imalat2.jpg',
    'assets/store/imalat3.jpg',
    'assets/store/imalat4.jpg',
  ];

  //SAYFALARIN RESİMLERİ İCİN LİSTELER AYRI AYRI OLACAK
  //////////////////
  


  static final List<String> imageSlidersDataForAhsapJaluziPerde = [
    'assets/product_images/ahsap-jaluzi1.jpg',
    'assets/product_images/ahsap-jaluzi2.jpg',
    'assets/product_images/ahsap-jaluzi3.jpg',
    'assets/product_images/ahsap-jaluzi4.jpg',
    'assets/product_images/ahsap-jaluzi5.jpg',
    'assets/product_images/ahsap-jaluzi6.jpg',
    'assets/product_images/ahsap-jaluzi7.jpg',
  ];

  static final List<String> imageSlidersDataForMetalJaluziPerde = [
    'assets/product_images/metal-jaluzi1.jpg',
    'assets/product_images/metal-jaluzi2.jpg',
    'assets/product_images/metal-jaluzi3.jpg',
    'assets/product_images/metal-jaluzi4.jpg',
    'assets/product_images/metal-jaluzi5.jpg',
    'assets/product_images/metal-jaluzi6.jpg',
  ];


  static final List<String> imageSlidersDataForPlisePerde = [
    'assets/product_images/plise1.jpg',
    'assets/product_images/plise2.jpg',
    'assets/product_images/plise3.jpg',
    'assets/product_images/plise4.jpg',
    'assets/product_images/plise5.jpg',
    'assets/product_images/plise6.jpg',
    'assets/product_images/plise7.jpg',
    'assets/product_images/plise8.jpg',
  ];


  static final List<String> imageSlidersDataForStorPerde = [
    'assets/product_images/stor1.jpg',
    'assets/product_images/stor2.jpg',
    'assets/product_images/stor3.jpg',
    'assets/product_images/stor4.jpg',
    'assets/product_images/stor5.jpg',
  ];

  static final List<String> imageSlidersDataForStorDikeyPerde = [
    'assets/product_images/stor-dikey1.jpg',
    'assets/product_images/stor-dikey2.jpg',
    'assets/product_images/stor-dikey3.jpg',
    'assets/product_images/stor-dikey4.jpg',
    'assets/product_images/stor-dikey5.jpg',
  ];

  static final List<String> imageSlidersDataForTulDikeyPerde = [
    'assets/product_images/tul-dikey1.jpg',
    'assets/product_images/tul-dikey2.jpg',
    'assets/product_images/tul-dikey3.jpg',
    'assets/product_images/tul-dikey4.jpg',
    'assets/product_images/tul-dikey5.jpg',
  ];

  static final List<String> imageSlidersDataForZebraPerde = [
    'assets/product_images/zebra1.jpg',
    'assets/product_images/zebra2.jpg',
    'assets/product_images/zebra3.jpg',
    'assets/product_images/zebra4.jpg',
    'assets/product_images/zebra5.jpg',
  ];

  static final List<String> imageSlidersDataForZipPerde = [
    'assets/product_images/zip1.jpg',
    'assets/product_images/zip2.jpg',
    'assets/product_images/zip3.jpg',
    'assets/product_images/zip4.jpg',
    'assets/product_images/zip5.jpg',

  ];

  static final List<String> imageSlidersDataForAkordiyonSineklik = [
    'assets/product_images/akordiyon-sineklik1.jpg',
    'assets/product_images/akordiyon-sineklik2.jpg',
    'assets/product_images/akordiyon-sineklik3.jpg',
    'assets/product_images/akordiyon-sineklik4.jpg',
    'assets/product_images/akordiyon-sineklik5.jpg',

    
  ];
  
  /////////////////
  ///Daha fazla resim sayfası için Listeler
  /////////////////
  


  static final List<String> moreImagesListForPlisePerde = [
    'assets/product_images/plise9.jpg',
    'assets/product_images/plise10.jpg',
    'assets/product_images/plise11.jpg',
    'assets/product_images/plise12.jpg',
    'assets/product_images/plise13.jpg',
    'assets/product_images/plise14.jpg',
    'assets/product_images/plise15.jpg',
    'assets/product_images/plise16.jpg',
    'assets/product_images/plise17.jpg',
    'assets/product_images/plise18.jpg',
    'assets/product_images/plise19.jpg',
    'assets/product_images/plise20.jpg',
    'assets/product_images/plise21.jpg',
    'assets/product_images/plise22.jpg',
    'assets/product_images/plise23.jpg',
    'assets/product_images/plise24.jpg',
    'assets/product_images/plise25.jpg',
    'assets/product_images/plise26.jpg',
    'assets/product_images/plise1.jpg',
    'assets/product_images/plise2.jpg',
    'assets/product_images/plise3.jpg',
    'assets/product_images/plise4.jpg',
    'assets/product_images/plise5.jpg',
    'assets/product_images/plise6.jpg',
    'assets/product_images/plise7.jpg',
    'assets/product_images/plise8.jpg',

  ];


  static final List<String> moreImagesListForAhsapJaluzi = [
    'assets/product_images/ahsap-jaluzi8.jpg',
    'assets/product_images/ahsap-jaluzi9.jpg',
    'assets/product_images/ahsap-jaluzi10.jpg',
    'assets/product_images/ahsap-jaluzi11.jpg',
    'assets/product_images/ahsap-jaluzi12.jpg',
    'assets/product_images/ahsap-jaluzi13.jpg',
    'assets/product_images/ahsap-jaluzi14.jpg',
    'assets/product_images/ahsap-jaluzi15.jpg',
    'assets/product_images/ahsap-jaluzi16.jpg',
    'assets/product_images/ahsap-jaluzi17.jpg',
    'assets/product_images/ahsap-jaluzi18.jpg',
    'assets/product_images/ahsap-jaluzi19.jpg',
    'assets/product_images/ahsap-jaluzi20.jpg',
    'assets/product_images/ahsap-jaluzi21.jpg',
    'assets/product_images/ahsap-jaluzi22.jpg',
    'assets/product_images/ahsap-jaluzi1.jpg',
    'assets/product_images/ahsap-jaluzi2.jpg',
    'assets/product_images/ahsap-jaluzi3.jpg',
    'assets/product_images/ahsap-jaluzi4.jpg',
    'assets/product_images/ahsap-jaluzi5.jpg',
    'assets/product_images/ahsap-jaluzi6.jpg',
  ];





  /////////////////
  //RENK SEÇENEKLERİ KATALOGU İÇİN RESİM LİSTELERİ
  ////////////////

  static final List<String> colorOptionsListForMetalJaluziPerde = [
    'assets/color_options/metal-jaluzi-renk1.jpg',
    'assets/color_options/metal-jaluzi-renk2.jpg',
    'assets/color_options/metal-jaluzi-renk3.jpg',
    'assets/color_options/metal-jaluzi-renk4.jpg',
    'assets/color_options/metal-jaluzi-renk5.jpg',
    'assets/color_options/metal-jaluzi-renk6.jpg',
  ];

  static final List<String> colorOptionsListForAhsapJaluziPerde = [
    'assets/color_options/ahsap-jaluzi-renk1.jpg',
    'assets/color_options/ahsap-jaluzi-renk2.jpg',
    'assets/color_options/ahsap-jaluzi-renk3.jpg',
    'assets/color_options/ahsap-jaluzi-renk4.jpg',
    'assets/color_options/ahsap-jaluzi-renk5.jpg',
    'assets/color_options/ahsap-jaluzi-renk6.jpg',
    'assets/color_options/ahsap-jaluzi-renk7.jpg',
    'assets/color_options/ahsap-jaluzi-renk8.jpg',
    'assets/color_options/ahsap-jaluzi-renk9.jpg',
    'assets/color_options/ahsap-jaluzi-renk10.jpg',
    'assets/color_options/ahsap-jaluzi-renk11.jpg',
  ];

  static final List<String> colorOptionsListForPlisePerde = [
    'assets/color_options/plise-renk1.jpg',
    'assets/color_options/plise-renk2.jpg',
    'assets/color_options/plise-renk3.jpg',
    'assets/color_options/plise-renk4.jpg',
    'assets/color_options/plise-renk5.jpg',
    'assets/color_options/plise-renk6.jpg',
    'assets/color_options/plise-renk7.jpg',
  ];

  static final List<String> colorOptionsListForPlisePerde2 = [
    'assets/color_options/plise-renk8.jpg',
    'assets/color_options/plise-renk9.jpg',
    'assets/color_options/plise-renk10.jpg',
    'assets/color_options/plise-renk11.jpg',
    'assets/color_options/plise-renk12.jpg',
    'assets/color_options/plise-renk13.jpg',
    'assets/color_options/plise-renk14.jpg',
    'assets/color_options/plise-renk15.jpg',
    'assets/color_options/plise-renk16.jpg',
    'assets/color_options/plise-renk17.jpg',
    'assets/color_options/plise-renk18.jpg',
    'assets/color_options/plise-renk19.jpg',
  ];

  static final List<String> colorOptionsListForPlisePerde3 = [
    'assets/color_options/plise-renk20.jpg',
    'assets/color_options/plise-renk21.jpg',
    'assets/color_options/plise-renk22.jpg',
    'assets/color_options/plise-renk23.jpg',
    'assets/color_options/plise-renk24.jpg',
    'assets/color_options/plise-renk25.jpg',
    'assets/color_options/plise-renk26.jpg',
    'assets/color_options/plise-renk27.jpg',
    'assets/color_options/plise-renk28.jpg',
    'assets/color_options/plise-renk29.jpg',
    'assets/color_options/plise-renk30.jpg',
    'assets/color_options/plise-renk31.jpg',
  ];

}


