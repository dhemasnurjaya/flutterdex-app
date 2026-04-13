enum PokemonMoveLearnMethod {
  levelUp(1, 'Natural'),
  egg(2, 'Egg'),
  tutor(3, 'Tutor'),
  machine(4, 'TM/HM'),
  stadium(5, 'Stadium: Surfing Pikachu'),
  voltTacklePichu(6, 'Volt Tackle Pichu'),
  colosseumPurification(7, 'Colosseum: Purification'),
  xdShadow(8, 'XD: Shadow'),
  xdPurification(9, 'XD: Purification'),
  formChange(10, 'Form Change'),
  zygardeCube(11, 'Zygarde Cube');

  const PokemonMoveLearnMethod(this.id, this.name);
  final int id;
  final String name;
}
