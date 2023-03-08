class deneme
{
  int sozelDogru;
  int sozelYanlis;
  int sayisalDogru;
  int sayisalYanlis;
  int obp;

  deneme({required this.sozelDogru,required this.sozelYanlis,required this.sayisalDogru,
   required this.sayisalYanlis,required this.obp});


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

  double sozelSonuc()
  {
    double sozelnet = sozelNet();
    double sayisalnet = sayisalNet();
    double sozelSonuc = (sozelnet * 3.091) + (sayisalnet * 0.584)+ (obp * 0.45) + 127.703;
    return sozelSonuc;
  }

  double sayisalSonuc()
  {
    double sozelnet = sozelNet();
    double sayisalnet = sayisalNet();
    double sayisalSonuc = (sozelnet * 0.618) + (sayisalnet * 2.905) + (obp * 0.45) + 127.703;
    return sayisalSonuc;
  }

  double eaSonuc()
  {
    double sozelnet = sozelNet();
    double sayisalnet = sayisalNet();
    double EAsonuc = (sozelnet * 1.855) + (sayisalnet * 1.747) + (obp * 0.45) + 136.564;
    return EAsonuc;
  }

}

