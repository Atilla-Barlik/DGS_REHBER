class deneme
{
  int sozelDogru;
  int sozelYanlis;
  int sayisalDogru;
  int sayisalYanlis;
  int obp;
  bool isSwitched;

  deneme({required this.sozelDogru,required this.sozelYanlis,required this.sayisalDogru,
   required this.sayisalYanlis,required this.obp, required this.isSwitched});


  double sozelNet()
  {
    double sozelNet = sozelDogru-(sozelYanlis/4);
    return sozelNet;
  }
  double sayisalNet()
  {
    double sayisalNet = sayisalDogru-(sayisalYanlis/4);
    return sayisalNet;
  }

  double? sozelSonuc()
  {

    if(isSwitched == true)
      {
        double sozelnet = sozelNet();
        double sayisalnet = sayisalNet();
        double? net = (sozelnet * 3.091) + (sayisalnet * 0.584)+ (obp * 0.45) + 127.703;
        net = num.parse(net.toStringAsFixed(3)) as double?;
        return  net;
      }
    else
      {
        double sozelnet = sozelNet();
        double sayisalnet = sayisalNet();
        double? net = (sozelnet * 3.091) + (sayisalnet * 0.584)+ (obp * 0.60) + 127.703;
        net = num.parse(net.toStringAsFixed(3)) as double?;
        return  net;
      }
  }

  double? sayisalSonuc()
  {
    if(isSwitched == true)
      {
        double sozelnet = sozelNet();
        double sayisalnet = sayisalNet();
        double? net = (sozelnet * 0.618) + (sayisalnet * 2.905) + (obp * 0.45) + 127.703;
        net = num.parse(net.toStringAsFixed(3)) as double?;
        return net;
      }
    else
      {
        double sozelnet = sozelNet();
        double sayisalnet = sayisalNet();
        double? net = (sozelnet * 0.618) + (sayisalnet * 2.905) + (obp * 0.60) + 127.703;
        net = num.parse(net.toStringAsFixed(3)) as double?;
        return  net;
      }
  }

  double? eaSonuc()
  {
    if(isSwitched == true)
      {
        double sozelnet = sozelNet();
        double sayisalnet = sayisalNet();
        double? net = (sozelnet * 1.855) + (sayisalnet * 1.747) + (obp * 0.45) + 136.564;
        net = num.parse(net.toStringAsFixed(3)) as double?;
        return net;
      }
    else
      {
        double sozelnet = sozelNet();
        double sayisalnet = sayisalNet();
        double? net = (sozelnet * 1.855) + (sayisalnet * 1.747) + (obp * 0.60) + 136.564;
        net = num.parse(net.toStringAsFixed(3)) as double;
        return net;
      }
  }
}

