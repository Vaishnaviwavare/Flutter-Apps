import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});
  @override
  State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _counter = 0;
  List<String> playerList = <String>[
    "https://www.google.com/imgres?q=mahendra%20singh%20dhoni&imgurl=https%3A%2F%2Fm.economictimes.com%2Fthumb%2Fmsid-61166379%2Cwidth-1200%2Cheight-900%2Cresizemode-4%2Cimgsize-126503%2Fwhy-after-13-years-mahendra-singh-dhoni-is-still-not-out.jpg&imgrefurl=https%3A%2F%2Fm.economictimes.com%2Fnews%2Fsports%2Fwhy-after-13-years-mahendra-singh-dhoni-is-still-not-out%2Farticleshow%2F61166379.cms&docid=OvyeWOxHCXxAnM&tbnid=6P4wwJnvhbzFbM&vet=12ahUKEwiGgIHW4vKIAxVLdfUHHQiZHFkQM3oECGEQAA..i&w=1200&h=900&hcb=2&ved=2ahUKEwiGgIHW4vKIAxVLdfUHHQiZHFkQM3oECGEQAA",
    "https://www.google.com/imgres?q=virat%20kohli&imgurl=https%3A%2F%2Fwww.hindustantimes.com%2Fstatic-content%2F1y%2Fcricket-logos%2Fplayers%2Fvirat-kohli.png&imgrefurl=https%3A%2F%2Fwww.hindustantimes.com%2Fcricket%2Fplayers%2Fvirat-kohli-3993&docid=ZCFkNPvoOzvBxM&tbnid=41OjRCz8QXAsmM&vet=12ahUKEwiImKHz4vKIAxUCjK8BHVDMDe8QM3oECF4QAA..i&w=300&h=300&hcb=2&ved=2ahUKEwiImKHz4vKIAxUCjK8BHVDMDe8QM3oECF4QAA",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.livemint.com%2Fsports%2Fcricket-news%2Fsachin-tendulkar-birthday-when-west-indies-legend-viv-richards-called-master-blaster-the-god-of-batting-watch-11713932876497.html&psig=AOvVaw1evHQj43efadvmuNuNYnew&ust=1728064227225000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCM1Ybj8ogDFQAAAAAdAAAAABAE",
    "https://www.google.com/imgres?q=shubman%20gill&imgurl=https%3A%2F%2Fimages.news18.com%2Fibnlive%2Fuploads%2F2024%2F09%2Fshubman-gill-2024-09-bbff3307f11fbc3e0a2a344030c4d157.jpg%3Fimpolicy%3Dwebsite%26width%3D640%26height%3D480&imgrefurl=https%3A%2F%2Fwww.news18.com%2Fcricket%2Fshubman-gill-breaks-virat-kohlis-century-record-to-take-no-2-position-in-elite-list-led-by-rohit-sharma-9058444.html&docid=nKL2w8GdgMUqOM&tbnid=jWK92tpfl7N8VM&vet=12ahUKEwiqlPqY4_KIAxUKh68BHbI0FVQQM3oECGYQAA..i&w=640&h=480&hcb=2&ved=2ahUKEwiqlPqY4_KIAxUKh68BHbI0FVQQM3oECGYQAA",
    "https://www.google.com/imgres?q=kl%20rahul&imgurl=https%3A%2F%2Fonecricketnews.akamaized.net%2Fparth-editor%2Foc-dashboard%2Fnews-images-prod%2F1700644243673_KLRahulll.jpeg&imgrefurl=https%3A%2F%2Fcricket.one%2Fcricket-news%2Fkl-rahul-likely-to-be-selected-as-wicketkeeper-for-indias-test-series-against-sa%2F655dc84cb3d564c51c739253&docid=jBeeLCcXtU-BYM&tbnid=QHe4NL-pmbTfXM&vet=12ahUKEwjSqdup4_KIAxVfiK8BHcewMDoQM3oECHYQAA..i&w=1189&h=745&hcb=2&ved=2ahUKEwjSqdup4_KIAxVfiK8BHcewMDoQM3oECHYQAA",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Players',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Players App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[_counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_counter < playerList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
