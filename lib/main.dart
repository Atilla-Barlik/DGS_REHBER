
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DGS REHBER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Anasayfa(title: 'DGS Puan Hesaplama'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key, required this.title});

  final String title;


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var sayisalD = TextEditingController();
  var sayisalY = TextEditingController();
  var sozelD = TextEditingController();
  var sozelY = TextEditingController();
  var onlBP = TextEditingController();
  var Sayisalsonuc;
  var Sozelsonuc;
  var EAsonuc;

  var sozelYanlis,sozelDogru,sayisalYanlis,sayisalDogru;
  var sozelNet,sayisalNet,sozelSonuc,sayisalSonuc,eaSonuc;


  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:

      
        Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 90,
                        child: Text(
                          "Sözel",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Open Sans',
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: sozelD,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.orange,
                          style: TextStyle(color: Colors.black,fontSize: 20),
                          maxLength: 2,
                          decoration: InputDecoration(
                            fillColor: Colors.white24,
                            filled: true,
                            hintText: "Doğru",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange,width: 2.5),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: sozelY,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.orange,
                          style: TextStyle(color: Colors.black,fontSize: 20),
                          maxLength: 2,
                          decoration: InputDecoration(
                            fillColor: Colors.white24,
                            filled: true,
                            hintText: "Yanlış",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange,width: 2.5),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),//TextField()
                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 90,
                        child: Text(
                          "Sayısal",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Open Sans',
                              fontSize: 25
                          ),
                        ),
                      ),

                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: sayisalD,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.orange,
                          style: TextStyle(color: Colors.black,fontSize: 20),
                          maxLength: 2,
                          decoration: InputDecoration(
                            fillColor: Colors.white24,
                            filled: true,
                            hintText: "Doğru",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange,width: 2.5),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: sayisalY,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.orange,
                          style: TextStyle(color: Colors.black,fontSize: 20),
                          maxLength: 2,
                          decoration: InputDecoration(
                            fillColor: Colors.white24,
                            filled: true,
                            hintText: "Yanlış",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange,width: 2.5),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),//TextField()
                  ],
                ),
                Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 248,
                        child: Text(
                          "Önlisans Başarı Puanı",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Open Sans',
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 10,
                          child: TextField(
                            controller: onlBP,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            cursorColor: Colors.orange,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            maxLength: 2,
                            decoration: InputDecoration(
                              fillColor: Colors.white24,
                              filled: true,
                              hintText: "ÖBP",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange,width: 2.5),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Bir Bölüme Yerleştim",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Open Sans',
                            fontSize: 25
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Switch(value:isSwitched , onChanged:(value)
                      {
                        setState(() {
                          isSwitched = value;
                        });
                      },),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150,
                        height: 60,
                        child: ElevatedButton(
                            onPressed:() {

                              setState(() {

                                if(sozelY.text == "")
                                  {
                                    sozelY.text = "0";
                                  }
                                if(sozelD.text == "")
                                  {
                                    sozelD.text = "0";
                                  }
                                if(sayisalY.text == "")
                                  {
                                    sayisalY.text = "0";
                                  }
                                if(sayisalD.text == "")
                                  {
                                    sayisalD.text = "0";
                                  }
                                if(onlBP.text == "")
                                  {
                                    onlBP.text = "40";
                                  }
                                sozelYanlis = int.parse(sozelY.text);
                                sozelDogru = int.parse(sozelD.text);
                                sayisalYanlis = int.parse(sayisalY.text);
                                sayisalDogru = int.parse(sayisalD.text);
                                sozelNet = sozelDogru-(sozelYanlis/4);
                                sayisalNet = sayisalDogru-(sayisalYanlis/4);
                                if(isSwitched == true)
                                  {
                                    sozelSonuc = (sozelNet * 3.091) + (sayisalNet * 0.584)+ (int.parse(onlBP.text) * 0.45) + 127.703;
                                    sayisalSonuc = (sozelNet * 0.618) + (sayisalNet * 2.905) + (int.parse(onlBP.text) * 0.45) + 127.703;
                                    EAsonuc = (sozelNet * 1.855) + (sayisalNet * 1.747) + (int.parse(onlBP.text) * 0.45) + 136.564;
                                    sozelSonuc.toStringAsFixed(3);
                                    sayisalSonuc.toStringAsFixed(3);

                                    sozelSonuc = num.parse(sozelSonuc.toStringAsFixed(3));
                                    sayisalSonuc = num.parse(sayisalSonuc.toStringAsFixed(3));
                                    EAsonuc = num.parse(EAsonuc.toStringAsFixed(3));
                                  }
                                else
                                  {
                                    sozelSonuc = (sozelNet * 3.091) + (sayisalNet * 0.584)+ (int.parse(onlBP.text) * 0.6) + 127.703;
                                    sayisalSonuc = (sozelNet * 0.618) + (sayisalNet * 2.905) + (int.parse(onlBP.text) * 0.6) + 127.703;
                                    EAsonuc = (sozelNet * 1.855) + (sayisalNet * 1.747) + (int.parse(onlBP.text) * 0.6) + 136.564;
                                    sozelSonuc.toStringAsFixed(3);
                                    sayisalSonuc.toStringAsFixed(3);

                                    sozelSonuc = num.parse(sozelSonuc.toStringAsFixed(3));
                                    sayisalSonuc = num.parse(sayisalSonuc.toStringAsFixed(3));
                                    EAsonuc = num.parse(EAsonuc.toStringAsFixed(3));
                                  }
                              });
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context)
                              {
                               return AlertDialog(
                                 title: Text("Sonuç"),
                                 content: Text("Sözel Puan : $sozelSonuc\nSayısal Puan : $sayisalSonuc\nEşit Ağırlık Puan : $EAsonuc"),
                                 actions: [
                                   TextButton(
                                       onPressed: (){},
                                       child:ElevatedButton(child: Text("Ok"),
                                       onPressed: (){
                                         Navigator.pop(context);
                                       },)
                                   ),
                                 ],
                                  );
                                },
                              );
                            },
                            child:Text("Hesapla"),
                          style: ButtonStyle(
                            textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150,
                        height: 60,
                        child: ElevatedButton(
                          onPressed:() {
                            setState(() {
                              isSwitched = false;
                              sayisalD.clear();
                              onlBP.clear();
                              sayisalY.clear();
                              sozelD.clear();
                              sozelY.clear();
                            });
                          },
                          child:Text("Temizle"),
                          style: ButtonStyle(
                            textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),

    );
  }
}
