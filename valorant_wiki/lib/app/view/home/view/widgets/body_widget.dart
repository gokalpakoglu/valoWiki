import 'package:flutter/material.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/valorant-icon.jpg',
              height: context.height * 0.3,
            ),
            Padding(
              padding: context.paddingNormal,
              child: Column(
                children: [
                  Text(
                    "Valorant (VALORANT olarak stilize edilir), Riot Games tarafından geliştirilip yayınlanan bir free-to-play çok oyunculu taktiksel birinci şahıs nişancı video oyunudur. İlk olarak Ekim 2019'da Project A kod adı altında yayınlanan oyun, 7 Nisan 2020'de sınırlı erişimle kapalı beta dönemine başladı ve ardından 2 Haziran 2020'de resmî olarak yayınlandı.",
                    style: context.textTheme.titleMedium,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    "Muhtemelen kelimenin kendisi, cesur veya yürekli olmak anlamına gelen İngilizce 'valor' kelimesinden türetilmiştir. Bu, oyundaki çeşitli karakterlerin özelliklerine uygun düşmektedir.Valorant yarı gerçekçi grafikleriyle tanımlanan taktiksel bir nişancı oyunudur. Birkaç oyun modu vardır, ancak ana oyun modu, bir tarafın saldırdığı ve diğer tarafın savunduğu 13 tura bölünmüştür. ",
                    style: context.textTheme.titleMedium,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    "Amaç ya bir bomba (Spike olarak adlandırılır) yerleştirmek, etkisiz hale getirmek ya da tüm düşman ekibini ortadan kaldırmaktır. Oynanacak çeşitli haritalar vardır, bu nedenle hoş olmayan sürprizlerden kaçınmak için uyanık olmanız gerekir.",
                    style: context.textTheme.titleMedium,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    "Valorant, temel aldığı Counter-Strike'ın aksine, oyun tarafından tanımlanan birkaç farklı role uyan özel yeteneklere sahip ajanlara sahiptir: Düellocular bir takımın birincil saldırganlarıdır, Başlatıcılar rakip takımı bozar, Sentineller geride durur ve ele geçirilen bölgeyi savunur ve Kontrolcüler, esas olarak tıkanma noktalarını gizlemek için dumanları konuşlandırarak turların gelgitini ve akışını belirler.",
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
