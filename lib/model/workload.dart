

class Workload {
  int maxLengthEnforcement = 4;
  String entryTime;
  String exitTime;
  String? starInterval;
  String? endInterval;
  Workload({
   required this.entryTime,
   required this.exitTime,
   this.starInterval,
   this.endInterval
 });
  


}