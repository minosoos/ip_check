class Ip {
  String ip;
  String region;
  String citta;

  Ip({required this.ip, required this.region, required this.citta});

  @override
  String toString() {
    // TODO: implement toString
    return 'ip : $ip | region : $region | citta : $citta';
  }
}
