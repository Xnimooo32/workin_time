enum Gender {
  male(gen:'male'),
  female(gen:'female'),
  other(gen:'other');
  const Gender({
    required this.gen,
  });
  final String gen;
}