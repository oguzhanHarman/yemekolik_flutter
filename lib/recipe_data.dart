// lib/recipe_data.dart

import '../models/recipe.dart';

final List<Recipe> allRecipes = [
  // ───── Türk Mutfağı (5) ─────
  Recipe(
    id: 'turk1',
    title: 'İskender Kebap',
    cuisine: 'Türk',
    description: 'Yoğurtlu, tereyağlı nefis bir et yemeği.',
    ingredients: [
      '500g döner eti',
      '1 kase yoğurt',
      '2 yemek kaşığı tereyağı',
      'Pide ekmeği',
      'Domates sosu'
    ],
    steps: [
      'Pideyi doğra ve ısıt.',
      'Üzerine döner koy.',
      'Yoğurt dök.',
      'Tereyağını eritip üzerine gezdir.',
      'Domates sosu ile servis et.'
    ],
    imagePath: 'assets/images/iskender.jpg',
  ),
  Recipe(
    id: 'turk2',
    title: 'Mercimek Çorbası',
    cuisine: 'Türk',
    description: 'Kremasız, besleyici kırmızı mercimek çorbası.',
    ingredients: [
      '1 su bardağı kırmızı mercimek',
      '1 patates',
      '1 soğan',
      '2 yemek kaşığı zeytinyağı',
      'Tuz, karabiber, pul biber'
    ],
    steps: [
      'Soğanı zeytinyağında kavur.',
      'Doğranmış patates ve mercimeği ekle.',
      'Su ilave edip pişir.',
      'Blender’dan geçirip baharatlarla servis et.'
    ],
    imagePath: 'assets/images/mercimek_corbasi.jpg',
  ),
  Recipe(
    id: 'turk3',
    title: 'Karnıyarık',
    cuisine: 'Türk',
    description: 'Patlıcan ve kıymadan hazırlanan klasik yemek.',
    ingredients: [
      '4 patlıcan',
      '200g kıyma',
      '2 soğan',
      '2 domates',
      '3 diş sarımsak',
      'Zeytinyağı, tuz, karabiber'
    ],
    steps: [
      'Patlıcanları kızart ve yağını süz.',
      'Soğan, sarımsak, kıyma kavur, doğranmış domates ekle.',
      'Patlıcanları ortadan kes, iç harç koy.',
      'Üzerine domates dilimleri yerleştir, fırında 20 dk pişir.'
    ],
    imagePath: 'assets/images/karniyarik.jpg',
  ),
  Recipe(
    id: 'turk4',
    title: 'Mantı',
    cuisine: 'Türk',
    description: 'Yoğurt ve kırmızı biberli tereyağlı sunumlu küçük hamur köfteler.',
    ingredients: [
      '2 su bardağı un',
      '1 yumurta',
      '200g kıyma',
      '1 soğan',
      'Yoğurt, tereyağı, pul biber, nane'
    ],
    steps: [
      'Hamuru yoğur, aç, küçük karelere böl.',
      'Kıymalı harç koyup bohça kapat.',
      'Su kaynat, mantıları haşla.',
      'Üzerine yoğurt ve kızdırılmış biberli tereyağı gezdir.'
    ],
    imagePath: 'assets/images/manti.jpg',
  ),
  Recipe(
    id: 'turk5',
    title: 'Baklava',
    cuisine: 'Türk',
    description: 'Şerbetli, çıtır çıtır kat kat hamur tatlısı.',
    ingredients: [
      '500g baklavalık yufka',
      '300g ceviz içi',
      '200g tereyağı',
      '2 su bardağı şeker',
      '2 su bardağı su',
      'Limon suyu'
    ],
    steps: [
      'Şerbet için su ve şekeri kaynat, limon ekle.',
      'Yufkaları tereyağıyla yağlayarak tepsiye yerleştir.',
      'Aralarına ceviz serpip kat kat devam et.',
      'Kesip önceden ısıtılmış 180°C’de 30 dk pişir.',
      'Fırından çıkar çıkmaz şerbeti dök.'
    ],
    imagePath: 'assets/images/baklava.jpg',
  ),

  // ───── İtalyan Mutfağı (5) ─────
  Recipe(
    id: 'ita1',
    title: 'Spaghetti Carbonara',
    cuisine: 'İtalyan',
    description: 'Kremasız orijinal makarna tarifi.',
    ingredients: [
      '200g spagetti',
      '100g pancetta veya pastırma',
      '2 yumurta sarısı',
      '50g parmesan',
      'Karabiber, tuz'
    ],
    steps: [
      'Makarnayı tuzlu suda haşla.',
      'Pancettayı tavada çıtırla.',
      'Yumurta sarısı ve parmesanı karıştır.',
      'Süzdüğün makarnayla hızlıca harmanla.'
    ],
    imagePath: 'assets/images/carbonara.jpg',
  ),
  Recipe(
    id: 'ita2',
    title: 'Margherita Pizza',
    cuisine: 'İtalyan',
    description: 'Domates, mozzarella ve fesleğenle klasik pizza.',
    ingredients: [
      'Pizza hamuru',
      '100g domates sosu',
      '150g mozzarella',
      'Taze fesleğen',
      'Zeytinyağı, tuz'
    ],
    steps: [
      'Hamuru aç, sosu sür.',
      'Mozzarella yerleştir, 250°C’de 12 dk pişir.',
      'Fesleğen ve zeytinyağı ekle.'
    ],
    imagePath: 'assets/images/margherita.jpg',
  ),
  Recipe(
    id: 'ita3',
    title: 'Risotto ai Funghi',
    cuisine: 'İtalyan',
    description: 'Mantarlı ve kremamsı pirinç yemeği.',
    ingredients: [
      '200g arborio pirinci',
      '150g mantar',
      '1 soğan',
      '1 su bardağı beyaz şarap',
      '500ml et suyu',
      '50g parmesan'
    ],
    steps: [
      'Soğanı kavur, mantar ekle.',
      'Pirinç kat, şarapla deglaze et.',
      'Sıcak et suyunu azar azar ekle, karıştır.',
      'Parmesan ekleyip kremamsı kıvam alana kadar pişir.'
    ],
    imagePath: 'assets/images/risotto_funghi.jpg',
  ),
  Recipe(
    id: 'ita4',
    title: 'Lasagna',
    cuisine: 'İtalyan',
    description: 'Kıymalı beşamel soslu kat kat fırın makarna.',
    ingredients: [
      'Lasagna yaprakları',
      '300g kıyma',
      '1 soğan',
      'Beşamel sos',
      '200g mozzarella',
      'Domates sosu'
    ],
    steps: [
      'Kıymayı kavur, domates sosu ekle.',
      'Beşamel sos hazırla.',
      'Yaprak, kıyma, beşamel ve peynir katman yap.',
      '180°C’de 35 dk pişir.'
    ],
    imagePath: 'assets/images/lasagna.jpg',
  ),
  Recipe(
    id: 'ita5',
    title: 'Tiramisu',
    cuisine: 'İtalyan',
    description: 'Kahveli, mascarpone peynirli İtalyan tatlısı.',
    ingredients: [
      '250g mascarpone',
      '3 yumurta sarısı',
      '100g şeker',
      'Espresso kahve',
      'Kedi dili bisküvi',
      'Kakao'
    ],
    steps: [
      'Yumurta sarısını şekerle çırpıp mascarpone ekle.',
      'Kedi dillerini kahveye batır.',
      'Katman katman yerleştir, buzdolabında 4 saat beklet.',
      'Servis öncesi kakao serpiştir.'
    ],
    imagePath: 'assets/images/tiramisu.jpg',
  ),

  // ───── Meksika Mutfağı (5) ─────
  Recipe(
    id: 'mex1',
    title: 'Tacos al Pastor',
    cuisine: 'Meksika',
    description: 'Marineli domuz etiyle yapılan Meksika klasiği.',
    ingredients: [
      'Tortilla',
      '300g domuz eti',
      'Ananas dilimleri',
      'Soğan, kişniş',
      'Adobo sos'
    ],
    steps: [
      'Eti adobo sosla marine et.',
      'Fırında veya tavada pişir.',
      'Tortillaya yerleştir, ananas, soğan, kişniş ekle.'
    ],
    imagePath: 'assets/images/tacos_al_pastor.jpg',
  ),
  Recipe(
    id: 'mex2',
    title: 'Guacamole',
    cuisine: 'Meksika',
    description: 'Avokado, domates, soğanla yapılan dip sos.',
    ingredients: [
      '2 olgun avokado',
      '1 domates',
      '1/2 soğan',
      '1 limon suyu',
      'Tuz, karabiber'
    ],
    steps: [
      'Avokadoları ezin.',
      'Doğranmış domates ve soğan ekle.',
      'Limon suyu ve baharatlarla karıştır.'
    ],
    imagePath: 'assets/images/guacamole.jpg',
  ),
  Recipe(
    id: 'mex3',
    title: 'Quesadilla',
    cuisine: 'Meksika',
    description: 'Peynir ve isteğe göre etle yapılan tortilla.',
    ingredients: [
      'Tortilla',
      '150g rendelenmiş peynir',
      'Tavuk veya et',
      'Tuz, biber'
    ],
    steps: [
      'Tortillaya peynir ve eti koy.',
      'Kapatarak tavada ısıt.',
      'Peynir eriyince servis et.'
    ],
    imagePath: 'assets/images/quesadilla.jpg',
  ),
  Recipe(
    id: 'mex4',
    title: 'Enchiladas',
    cuisine: 'Meksika',
    description: 'Sosu ile kaplanıp fırınlanan tortilla rulolar.',
    ingredients: [
      'Tortilla',
      'Tavuk',
      'Enchilada sosu',
      'Peynir'
    ],
    steps: [
      'Tavuklu harcı tortillaya sar.',
      'Sosu döküp peynir ekle.',
      '180°C’de 20 dk fırınla.'
    ],
    imagePath: 'assets/images/enchiladas.jpg',
  ),
  Recipe(
    id: 'mex5',
    title: 'Churros',
    cuisine: 'Meksika',
    description: 'Tarçınlı şekerle kaplanmış kızarmış hamur çubukları.',
    ingredients: [
      '1 su bardağı su',
      '1 su bardağı un',
      '2 yemek kaşığı tereyağı',
      '1 çay kaşığı tuz',
      'Kızartmalık yağ',
      'Tarçın şekeri'
    ],
    steps: [
      'Su, tereyağı ve tuzu kaynat.',
      'Unu ekleyip hamur yap.',
      'Sıkma torbasıyla sıkıp kızgın yağda kızart.',
      'Tarçın şekerine bulayıp servis et.'
    ],
    imagePath: 'assets/images/churros.jpg',
  ),

  // ───── Hint Mutfağı (5) ─────
  Recipe(
    id: 'ind1',
    title: 'Butter Chicken',
    cuisine: 'Hint',
    description: 'Kremalı ve baharatlı tavuk yemeği.',
    ingredients: [
      '500g tavuk',
      '200g yoğurt',
      'Tereyağı',
      'Domates püresi',
      'Baharat karışımı'
    ],
    steps: [
      'Tavuğu yoğurt ve baharatla marine et.',
      'Tavada tereyağında pişir.',
      'Domates püresi ekle, sos koyulaşana kadar kaynat.'
    ],
    imagePath: 'assets/images/butter_chicken.jpg',
  ),
  Recipe(
    id: 'ind2',
    title: 'Chana Masala',
    cuisine: 'Hint',
    description: 'Nohutlu ve domates soslu baharatlı yemek.',
    ingredients: [
      '2 su bardağı nohut',
      '1 soğan',
      '2 domates',
      'Baharatlar',
      'Zeytinyağı'
    ], steps: [
    'Nohutları haşla.',
    'Soğan, domates ve baharatları kavur.',
    'Nohutu ekleyip sosla kaynat.'
  ],
    imagePath: 'assets/images/chana_masala.jpg',
  ),
  Recipe(
    id: 'ind3',
    title: 'Palak Paneer',
    cuisine: 'Hint',
    description: 'Ispanak ve paneer peyniri yemeği.',
    ingredients: [
      '200g ıspanak',
      '150g paneer',
      '1 soğan',
      'Sarımsak, zencefil',
      'Baharatlar'
    ],
    steps: [
      'Ispanakları haşla ve blenderdan geçir.',
      'Soğan, sarımsak, zencefili kavur.',
      'Ispanak püresini ekle, paneer küplerini kat.'
    ],
    imagePath: 'assets/images/palak_paneer.jpg',
  ),
  Recipe(
    id: 'ind4',
    title: 'Biryani',
    cuisine: 'Hint',
    description: 'Baharatlı pilav ve et katmanlı geleneksel yemek.',
    ingredients: [
      'Basmati pirinci',
      'Tavuk veya kuzu eti',
      'Baharatlar',
      'Yoğurt'
    ],
    steps: [
      'Et ve baharatları marine et.',
      'Pirinci kısmen haşla.',
      'Katmanlı olarak pişir ve demlendir.'
    ],
    imagePath: 'assets/images/biryani.jpg',
  ),
  Recipe(
    id: 'ind5',
    title: 'Samosa',
    cuisine: 'Hint',
    description: 'Patatesli baharatlı üçgen hamur kızartması.',
    ingredients: [
      'Un',
      'Patates',
      'Bezelye',
      'Baharatlar',
      'Kızartmalık yağ'
    ],
    steps: [
      'Hamur yoğur, aç.',
      'Patates ve bezelyeyi baharatla kavur.',
      'Hamura sarıp üçgen kapat, kızart.'
    ],
    imagePath: 'assets/images/samosa.jpg',
  ),
];
