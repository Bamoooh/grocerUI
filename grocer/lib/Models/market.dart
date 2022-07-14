class Market {
  String name = ' ';
  String logo = ' ';
  int count = 0;

  Market({this.name = '', this.logo = '', this.count = 0});

  List getMarkets()
  {
    return [
      Market(name: 'Panda', count: 4, logo: 'no image'),
      Market(name: 'Panda', count: 4, logo: 'no image'),
      Market(name: 'Panda', count: 4, logo: 'no image'),
      Market(name: 'Panda', count: 4, logo: 'no image'),
    ];
  }

}

