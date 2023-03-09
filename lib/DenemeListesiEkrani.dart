import 'package:dgs_rehber/denemeModeli.dart';
import 'package:flutter/material.dart';

class denemeListesi extends StatefulWidget {


  @override
  State<denemeListesi> createState() => _denemeListesiState();
}

class _denemeListesiState extends State<denemeListesi> {

  Future<List<deneme>> denemeler() async {
    var denemeListesi = <deneme>[];

    var d1 = deneme(sozelDogru: 20, sozelYanlis: 5, sayisalDogru: 20, sayisalYanlis: 5, obp: 70, isSwitched: false);
    var d2 = deneme(sozelDogru: 35, sozelYanlis: 8, sayisalDogru: 12, sayisalYanlis: 11, obp: 70, isSwitched: false);
    var d3 = deneme(sozelDogru: 8, sozelYanlis: 3, sayisalDogru: 9, sayisalYanlis: 3, obp: 70, isSwitched: false);

    denemeListesi.add(d1);
    denemeListesi.add(d2);
    denemeListesi.add(d3);

    return denemeListesi;
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.white12,
      body: FutureBuilder<List<deneme>>(
        future: denemeler(),
        builder: (context,snapshot){
          if(snapshot.hasData)
          {
                var dl = snapshot.data;

                return ListView.builder(
                  itemCount:dl!.length,
                  itemBuilder: (context,index)
                  {
                    var deneme = dl[index];

                    return Card(
                      shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      color: Colors.white38,
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 83,
                                        child: Text("",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Doğru",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Yanlış",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Net",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 83,
                                        child: Text("Sözel",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${deneme.sozelDogru}",style: TextStyle(fontSize: 25)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${deneme.sozelYanlis}",style: TextStyle(fontSize: 25)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${deneme.sozelNet()}",style: TextStyle(fontSize: 25)),
                                  ),
                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 83,
                                        child: Text("Sayisal",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${deneme.sayisalDogru}",style: TextStyle(fontSize: 25)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${deneme.sayisalYanlis}",style: TextStyle(fontSize: 25)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${deneme.sayisalNet()}",style: TextStyle(fontSize: 25)),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Sözel",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${deneme.sozelSonuc()}",style: TextStyle(fontSize: 25),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Sayisal",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${deneme.sayisalSonuc()}",style: TextStyle(fontSize: 25),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Eşit Ağırlık",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${deneme.eaSonuc()}",style: TextStyle(fontSize: 25),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
          }
          else
          {
            return Center();
          }
        },
      ),
    );
  }
}
