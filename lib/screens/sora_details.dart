import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/quran_data.dart';

class SoraDetails extends StatefulWidget {
  static const routeName = 'sora_details';

  @override
  State<SoraDetails> createState() => _SoraDetailsState();
}

class _SoraDetailsState extends State<SoraDetails> {
  late int index;

  String? sora;

  void loadSora(int index) async {
    print('here');
    sora = await QuranData.readSora(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isLight = Theme.of(context).brightness == Brightness.light;
    index = ModalRoute.of(context)!.settings.arguments as int;
    if (sora == null) {
      loadSora(index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          'assets/images/${isLight ? 'bg3' : 'bg_dark'}.png',
        ),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.secondaryVariant,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Theme.of(context).colorScheme.brightness,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'إسلامي',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondaryVariant,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ).add(EdgeInsets.only(bottom: 30)),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).colorScheme.primaryVariant.withOpacity(0.7),
                Theme.of(context).colorScheme.primaryVariant,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                QuranData.quranNames[index],
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Divider(
                color: Color.fromRGBO(183, 147, 95, 1),
                thickness: 1,
              ),
              //Text(),
              Expanded(
                child: SingleChildScrollView(
                  child: (sora == null)
                      ? Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : Text(
                          sora!,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 20,
                            height: 2,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
