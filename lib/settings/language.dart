// Areeb Emran
// Language display

import 'package:flutter/material.dart';
import 'package:edunciate/font_standards.dart';
import 'package:edunciate/settings/res/sizes.dart';
import 'package:edunciate/settings/res/strings.dart';

import '../color_scheme.dart';

class Language extends StatefulWidget {
  final CustomColorScheme colorScheme;

  const Language(this.colorScheme, {Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState(colorScheme);
}

class _LanguageState extends State<Language> {
  final CustomColorScheme colorScheme;

  _LanguageState(this.colorScheme);

  void _voidFunction() {
    // print("EEEEEE");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.fromLTRB(
              Sizes.none, Sizes.smallMargin, Sizes.none, Sizes.smallMargin),
          child: Text(StringList.language,
              textDirection: TextDirection.ltr,
              style: FontStandards.getTextStyle(
                colorScheme,
                Style.header,
                FontSize.heading,
              )),
        ),
        // The language display box
        SizedBox(
          child: Container(
            decoration: BoxDecoration(
              color: colorScheme.getColor(CustomColorScheme.lightPrimary),
              border: Border.all(
                  color: colorScheme.getColor(CustomColorScheme.darkPrimary),
                  width: Sizes.borderWidth),
            ),
            padding: const EdgeInsets.all(Sizes.mediumMargin),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              verticalDirection: VerticalDirection.down,
              children: [
                // Current Language
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      StringList.language,
                      textWidthBasis: TextWidthBasis.longestLine,
                      style: FontStandards.getTextStyle(
                          colorScheme, Style.darkVarBold, FontSize.large),
                    ),
                    const SizedBox(
                      width: Sizes.mediumMargin,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      color:
                          colorScheme.getColor(CustomColorScheme.lightVariant),
                      padding: const EdgeInsets.all(Sizes.smallMargin),
                      child: Text(
                        textWidthBasis: TextWidthBasis.longestLine,
                        "English",
                        style: FontStandards.getTextStyle(colorScheme,
                            Style.darkNormUnderline, FontSize.large),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: Sizes.smallSpacerWidth,
                ),
                // Change language box
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: colorScheme.getColor(CustomColorScheme.change),
                        onPrimary:
                            colorScheme.getColor(CustomColorScheme.normalText),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Sizes.roundedBorder))),
                    onPressed: _voidFunction,
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.smallMargin),
                      child: Text(
                        textWidthBasis: TextWidthBasis.longestLine,
                        StringList.changeLang,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: FontStandards.getTextStyle(
                            colorScheme, Style.norm, FontSize.large),
                      ),
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: Sizes.smallSpacerWidth,
        )
      ],
    );
  }
}
