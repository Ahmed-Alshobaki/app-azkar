import 'package:flutter/material.dart';

import '../core/resources/manager/font.dart';
import '../core/resources/manager/manager_colors.dart';
import '../core/resources/manager/manager_fontsizes.dart';
import '../core/resources/manager/manager_fontweight.dart';
import '../core/resources/manager/manager_strings.dart';

class mainazkar extends StatefulWidget {
  const mainazkar({super.key});

  @override
  State<mainazkar> createState() => _mainazkarState();
}

class _mainazkarState extends State<mainazkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info),
              color: Colors.white,
              iconSize: 28,
            ),
          ],
          title: const Text(
            Manager_string.S_Azkar,
            style: TextStyle(
                fontSize: Manager_fontsizes.siz33,
                fontWeight: Manager_fontweight.font_w600,
                fontFamily: font.font_ReemKufiFun),
          ),
          centerTitle: true,
          backgroundColor: ColorsApp.transparent,
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/core/resources/images/img.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Align(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black45,
                  borderRadius: BorderRadius.circular(5)
                ),
                alignment: Alignment.center,
                height: 50,
                width: 52,
                child: Text("1",style: TextStyle(fontSize: Manager_fontsizes.siz33,fontFamily: font.font_ReemKufiFun,color: Colors.white),),
              ),
            )

          ],
        ));
  }
}
