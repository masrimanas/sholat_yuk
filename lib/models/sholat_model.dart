class Sholat {
  String name;
  String niat;
  int numberOfRakaat;
  String time;

  Sholat({
    required this.name,
    required this.niat,
    required this.numberOfRakaat,
    required this.time,
  });
}

final List<Sholat> sholatList = [
  Sholat(
    name: 'Shubuh',
    niat:
        'Ushalli fardhas subhi rak’ataini mustqbilal qiblati adaa-an (ma’mumam/imaaman) lillaahi ta’aalaa.',
    numberOfRakaat: 2,
    time: '04:52',
  ),
  Sholat(
    name: 'Dzuhur',
    niat:
        'Ushalli fardhadz dzuhri arba’a raka’aatin mustqbilal qiblati adaa-an (ma’mumam/imaaman) lillaahi ta’aalaa.',
    numberOfRakaat: 4,
    time: '12:21',
  ),
  Sholat(
    name: 'Ashar',
    niat:
        'Ushalli fardhal ashri arba’a raka’aatin mustqbilal qiblati adaa-an (ma’mumam/imaaman) lillaahi ta’aalaa.',
    numberOfRakaat: 4,
    time: '15:46',
  ),
  Sholat(
    name: 'Maghrib',
    niat:
        'Ushalli fardhal maghribi salasa’ raka’aatin mustqbilal qiblati adaa-an (ma’mumam/imaaman) lillaahi ta’aalaa.',
    numberOfRakaat: 3,
    time: '18:25',
  ),
  Sholat(
    name: 'Isya',
    niat:
        'Ushalli fardhal ‘Isyaa-i raka’aatin mustqbilal qiblati adaa-an (ma’mumam/imaaman) lillaahi ta’aalaa.',
    numberOfRakaat: 4,
    time: '19:39',
  ),
];
