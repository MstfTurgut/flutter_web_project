
import 'package:flutter/material.dart';





 class AboutPageRichText extends StatelessWidget {

  const AboutPageRichText({
    super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
  text: const TextSpan(
    style: TextStyle(color: Colors.white70),
    children: <TextSpan>[

      TextSpan(text: 'Nayis Tekstil' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
      TextSpan(text: ", uzun yıllara dayanan deneyimi ve müşteri memnuniyetine verdiği önem ile kaliteli ve çeşitli perdelerin adresi olarak bilinmektedir.Firmamız, perde sektöründeki gelişmeleri yakından takip ederek, son moda trendleri ve en yeni tasarımları müşterileriyle buluşturmaktadır. Ürün yelpazemiz geniş bir çeşitlilik sunmakta olup, perdelerimizde kullanılan malzemelerde yüksek kalite standartlarına sadık kalmaktayız. "),
      TextSpan(text: 'Nayis Tekstil' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
      TextSpan(text: " olarak, müşterilerimize estetik açıdan göz alıcı ve fonksiyonel perdeler sunmanın yanı sıra, uzun ömürlü ve dayanıklı ürünler de sağlamaktayız.\n\n\nFirma olarak toptan perde satışı konusunda uzmanlaşmış olmamız, müşterilerimize avantajlar sağlamaktadır. Perakende satış fiyatlarının altında toptan fiyatlarla çalışarak, müşterilerimize rekabetçi ve ekonomik bir seçenek sunmaktayız. Bu sayede, perakende sektöründe faaliyet gösteren işletmelerin yanı sıra mimarlar, iç mimarlar, otel ve restoranlar gibi ticari işletmeler de "),
      TextSpan(text: 'Nayis Tekstil' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
      TextSpan(text: "'den perde ihtiyaçlarını karşılayabilmektedir.\n\n\n"),
      TextSpan(text: 'Nayis Tekstil' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
      TextSpan(text: " olarak, müşteri memnuniyetini her zaman önceliğimiz olarak benimsemekteyiz. Profesyonel ve deneyimli ekibimiz, müşterilerimizin beklentilerini anlamak ve onlara en uygun çözümleri sunmak için çalışmaktadır. Müşterilerimizin taleplerini dikkatle dinleyerek, onlara özel tasarımlar ve ölçüye göre üretim imkanı sağlamaktayız.\n\n\n"),
      TextSpan(text: 'Nayis Tekstil' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
      TextSpan(text: ", sektördeki güvenilirliği ve kalitesiyle öne çıkan bir perde firmasıdır. İnovatif yaklaşımı, geniş ürün yelpazesi, rekabetçi fiyatları ve müşteri odaklı hizmet anlayışıyla "),
      TextSpan(text: 'Nayis Tekstil' , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
      TextSpan(text: ", müşterilerine beklentilerini aşan bir deneyim sunmaktadır."),

    ]
  ),
  );
  }
}