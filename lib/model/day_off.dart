enum DayOff{
  monday(dOff:'Segunda' ),
  tuesday(dOff:'Terça' ),
  wednesday(dOff:'Quarta' ),
  thursday(dOff:'Quinta' ),
  friday(dOff:'Sexta' ),
  saturday(dOff:'Sábado' ),
  sunday(dOff: 'Domingo');

 const DayOff({
  required this.dOff
 });
 final String dOff;
}

