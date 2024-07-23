enum Coins {
  real(coin:'R\$'),
  dolar(coin:'\$'),
  libra(coin:'£'),
  iene(coin:'¥'),
  euro(coin:'€');
  const Coins({
    required this.coin,
  });
  final String coin;
}