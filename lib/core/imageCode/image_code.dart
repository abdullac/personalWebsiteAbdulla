import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ImageCode extends StatelessWidget {
  const ImageCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        width: Screen.internal.isPortrait == true
                      ? longSize100(65)
                      : Screen.internal.isSquare == true
                          ? longSize100(50)
                          : shortSize100(70),
        height: Screen.internal.isPortrait == true
            ? longSize100(69)
            : Screen.internal.isSquare == true
                ? longSize100(55)
                : shortSize100(80),
               
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: Screen.internal.isPortrait == true
                      ? longSize100(26)
                      : Screen.internal.isSquare == true
                          ? longSize100(20)
                          : shortSize100(25),
                  height: Screen.internal.isPortrait == true
                      ? longSize100(26)
                      : Screen.internal.isSquare == true
                          ? longSize100(20)
                          : shortSize100(25),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(Screen.internal.isPortrait == true
                      ? longSize100(26)
                      : Screen.internal.isSquare == true
                          ? longSize100(20)
                          : longSize100(25),),
                    ),
                  ),
                  child: const Text(
                    "Reloaded1of674librariesin521ms(compile:187ms,roaded1of674librariesin521ms(compile:187ms,roaded1of674librariesin521ms(compile:187ms,roaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:187ms,reloadeload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:187ms,reloadeload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:187ms,reloadeload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:187ms,reload:128msreassemble188ms)Reloaded1of674librariesinibrarieloaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesineassembeloaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesin 45 ms).",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white12),
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Screen.internal.isPortrait == true
                      ? null
                      : Screen.internal.isSquare == true
                          ? null
                          : null,
                height: Screen.internal.isPortrait == true
                    ? longSize100(43)
                    : Screen.internal.isSquare == true
                        ? longSize100(38)
                        : shortSize100(60),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Screen.internal.isPortrait == true
                    ? longSize100(43)
                    : Screen.internal.isSquare == true
                        ? longSize100(43)
                        : longSize100(60),),
                      topRight: Radius.circular(Screen.internal.isPortrait == true
                    ? longSize100(43)
                    : Screen.internal.isSquare == true
                        ? longSize100(43)
                        : longSize100(60),)),
                ),
                child: const Text(
                  "Reloaded1of674librariesin521ms(compile:187ms,oaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemoaded1of674librariesin521ms(compile:187ms,reload:128ms,reasseoaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:187ms,reloadmble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:187ms,reloadble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:187ms,reloadreload:128mReloaded1of674librariesin521ms(compile:187ms,relReloaded1of674librariesin521ms(compileReloaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:18:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:18oad:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:18s,reassemble:188ms).Reloaded1of67Reloaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:184librariesieReloaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesieloaded1of674librariesin521ms(compile:18loaded1of674librariesin521ms(compile:187ms,reload:128msreassemble188ms)Reloaded1of674librariesinibrarieloaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesineassembeloaded1of674librariesin521ms(compile:187ms,reload:128ms,reassemble:188ms).Reloaded1of674librariesin 45 ms).",
                  textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white12),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
