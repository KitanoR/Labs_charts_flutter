import 'package:flutter/material.dart';
import 'package:labs_graficas/src/page/bezier_chart_page.dart';
import 'package:labs_graficas/src/page/chart_flutter.dart';
import 'package:labs_graficas/src/page/fl_char_page.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:labs_graficas/src/page/synfucion_page.dart';


void main() => Intl.withLocale('es', () => runApp(MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('es', null);

    return MaterialApp(
      title: 'Flutter Demo',
      locale: Locale('es'),
      supportedLocales: <Locale>[
        Locale('es')
      ],
      theme: ThemeData.light(),
      home: Scaffold(
        body: CuerpoWidget(),
      )
    );
  }
}

class CuerpoWidget extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     DateTime now = new DateTime.now();
    print(Localizations.localeOf(context).languageCode);
    // String dateFormat2 = new DateFormat.EEEE(Localizations.localeOf(context).languageCode).format(now);
    String dateFormat = new DateFormat('EEEE').format(now.toLocal());

    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(dateFormat),
            // SyncFusionPage()
            ChartFlutterPage()
          ],
        ),
      ),
    );
  }
}
