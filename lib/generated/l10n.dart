// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `What kind of help do you need with\nfruit picking?`
  String get Catchphrase {
    return Intl.message(
      'What kind of help do you need with\nfruit picking?',
      name: 'Catchphrase',
      desc: '',
      args: [],
    );
  }

  /// `List`
  String get List {
    return Intl.message(
      'List',
      name: 'List',
      desc: '',
      args: [],
    );
  }

  /// `Manners`
  String get Manners {
    return Intl.message(
      'Manners',
      name: 'Manners',
      desc: '',
      args: [],
    );
  }

  /// `Belonging`
  String get Belongings {
    return Intl.message(
      'Belonging',
      name: 'Belongings',
      desc: '',
      args: [],
    );
  }

  /// `Quiz`
  String get Quiz {
    return Intl.message(
      'Quiz',
      name: 'Quiz',
      desc: '',
      args: [],
    );
  }

  /// `[Home]Please close the screen and try again`
  String get GetData {
    return Intl.message(
      '[Home]Please close the screen and try again',
      name: 'GetData',
      desc: '',
      args: [],
    );
  }

  /// `Copyright Notice`
  String get Credits {
    return Intl.message(
      'Copyright Notice',
      name: 'Credits',
      desc: '',
      args: [],
    );
  }

  /// `Photo・illustration\n\n`
  String get PhotoIllustration {
    return Intl.message(
      'Photo・illustration\n\n',
      name: 'PhotoIllustration',
      desc: '',
      args: [],
    );
  }

  /// `・Top Page : Image courtesy of Pexels\n\n ・List Page, and Quiz Page : Images courtesy of PhotoAC and IllustrationAC\n\n・Belongings Page, Manners Page, and Copyright Page: Image courtesy of IllustrationAC\n\n`
  String get TopPage {
    return Intl.message(
      '・Top Page : Image courtesy of Pexels\n\n ・List Page, and Quiz Page : Images courtesy of PhotoAC and IllustrationAC\n\n・Belongings Page, Manners Page, and Copyright Page: Image courtesy of IllustrationAC\n\n',
      name: 'TopPage',
      desc: '',
      args: [],
    );
  }

  /// `Font and icon name\n\n`
  String get FontIcon {
    return Intl.message(
      'Font and icon name\n\n',
      name: 'FontIcon',
      desc: '',
      args: [],
    );
  }

  /// `Google Font\n\nFontAwesomeIcon`
  String get GoogleFontFontAwesomeIcon {
    return Intl.message(
      'Google Font\n\nFontAwesomeIcon',
      name: 'GoogleFontFontAwesomeIcon',
      desc: '',
      args: [],
    );
  }

  /// `Banner ad display`
  String get Ado {
    return Intl.message(
      'Banner ad display',
      name: 'Ado',
      desc: '',
      args: [],
    );
  }

  /// `Please select if you would like to allow personalized ads. \n\nBy allowing personalized ads, you can reduce the display of ads that are less relevant to your interests.\n\nPlease note that we do not collect your personal information through this process.\n\n`
  String get AdoText {
    return Intl.message(
      'Please select if you would like to allow personalized ads. \n\nBy allowing personalized ads, you can reduce the display of ads that are less relevant to your interests.\n\nPlease note that we do not collect your personal information through this process.\n\n',
      name: 'AdoText',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to the next page.`
  String get Next {
    return Intl.message(
      'Proceed to the next page.',
      name: 'Next',
      desc: '',
      args: [],
    );
  }

  /// `Number of questions`
  String get QuestionCount {
    return Intl.message(
      'Number of questions',
      name: 'QuestionCount',
      desc: '',
      args: [],
    );
  }

  /// `How many questions will you answer?`
  String get HowManyQuestions {
    return Intl.message(
      'How many questions will you answer?',
      name: 'HowManyQuestions',
      desc: '',
      args: [],
    );
  }

  /// `10`
  String get TenQuestions {
    return Intl.message(
      '10',
      name: 'TenQuestions',
      desc: '',
      args: [],
    );
  }

  /// `20`
  String get TwentyQuestions {
    return Intl.message(
      '20',
      name: 'TwentyQuestions',
      desc: '',
      args: [],
    );
  }

  /// `30`
  String get ThirtyQuestions {
    return Intl.message(
      '30',
      name: 'ThirtyQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Seasonal Fruits`
  String get FruitList {
    return Intl.message(
      'Seasonal Fruits',
      name: 'FruitList',
      desc: '',
      args: [],
    );
  }

  /// `We apologize, but we were unable to retrieve the requested data.\n Please close this window and try again later.`
  String get Attention {
    return Intl.message(
      'We apologize, but we were unable to retrieve the requested data.\n Please close this window and try again later.',
      name: 'Attention',
      desc: '',
      args: [],
    );
  }

  /// `All Season`
  String get All {
    return Intl.message(
      'All Season',
      name: 'All',
      desc: '',
      args: [],
    );
  }

  /// `Spring`
  String get SpringFruit {
    return Intl.message(
      'Spring',
      name: 'SpringFruit',
      desc: '',
      args: [],
    );
  }

  /// `Summer`
  String get SummerFruit {
    return Intl.message(
      'Summer',
      name: 'SummerFruit',
      desc: '',
      args: [],
    );
  }

  /// `Autumn`
  String get AutumnFruit {
    return Intl.message(
      'Autumn',
      name: 'AutumnFruit',
      desc: '',
      args: [],
    );
  }

  /// `Winter`
  String get WinterFruit {
    return Intl.message(
      'Winter',
      name: 'WinterFruit',
      desc: '',
      args: [],
    );
  }

  /// `1. What makes freshness so important for enjoying delicious fruits?`
  String get DetailQuestion0 {
    return Intl.message(
      '1. What makes freshness so important for enjoying delicious fruits?',
      name: 'DetailQuestion0',
      desc: '',
      args: [],
    );
  }

  /// `2. What are the major production areas?`
  String get DetailQuestion1 {
    return Intl.message(
      '2. What are the major production areas?',
      name: 'DetailQuestion1',
      desc: '',
      args: [],
    );
  }

  /// `2-2. What factors should I consider when choosing a production area?`
  String get DetailQuestion2 {
    return Intl.message(
      '2-2. What factors should I consider when choosing a production area?',
      name: 'DetailQuestion2',
      desc: '',
      args: [],
    );
  }

  /// `3. What are the well-known cultivars? `
  String get DetailQuestion3 {
    return Intl.message(
      '3. What are the well-known cultivars? ',
      name: 'DetailQuestion3',
      desc: '',
      args: [],
    );
  }

  /// `3-2. Which varieties have the highest sugar content?`
  String get DetailQuestion4 {
    return Intl.message(
      '3-2. Which varieties have the highest sugar content?',
      name: 'DetailQuestion4',
      desc: '',
      args: [],
    );
  }

  /// `3-3. Which varieties are seedless?`
  String get DetailQuestion5 {
    return Intl.message(
      '3-3. Which varieties are seedless?',
      name: 'DetailQuestion5',
      desc: '',
      args: [],
    );
  }

  /// `4. When is the best season to eat fruits? `
  String get DetailQuestion6 {
    return Intl.message(
      '4. When is the best season to eat fruits? ',
      name: 'DetailQuestion6',
      desc: '',
      args: [],
    );
  }

  /// `5. What are the nutritional values?`
  String get DetailQuestion7 {
    return Intl.message(
      '5. What are the nutritional values?',
      name: 'DetailQuestion7',
      desc: '',
      args: [],
    );
  }

  /// `5-2. What are the benefits of nutrients?`
  String get DetailQuestion8 {
    return Intl.message(
      '5-2. What are the benefits of nutrients?',
      name: 'DetailQuestion8',
      desc: '',
      args: [],
    );
  }

  /// `6. What is the cost of a harvest experience?`
  String get DetailQuestion9 {
    return Intl.message(
      '6. What is the cost of a harvest experience?',
      name: 'DetailQuestion9',
      desc: '',
      args: [],
    );
  }

  /// `7. How can I tell if it's ripe?`
  String get DetailQuestion10 {
    return Intl.message(
      '7. How can I tell if it\'s ripe?',
      name: 'DetailQuestion10',
      desc: '',
      args: [],
    );
  }

  /// `Fresh fruits have a great taste and aroma, and their nutrients remain intact. \n\nThey are also rich in dietary fiber and can help boost your immune system.`
  String get DetailAnswer0 {
    return Intl.message(
      'Fresh fruits have a great taste and aroma, and their nutrients remain intact. \n\nThey are also rich in dietary fiber and can help boost your immune system.',
      name: 'DetailAnswer0',
      desc: '',
      args: [],
    );
  }

  /// `① Fruits grown in warm climates tend to have higher sugar content and a sweeter taste. \n\n② Fruits cultivated in cold regions often have a higher acidity.\n\n③ Fruits grown in sandy soil tend to have higher sugar content and a sweeter taste.\n\n④ Fruits cultivated in volcanic soil are often rich in minerals and have a higher acidity.\n\n⑤ Fruits grown with organic fertilizers tend to be sweeter than those grown with chemical fertilizers.`
  String get DetailAnswer1 {
    return Intl.message(
      '① Fruits grown in warm climates tend to have higher sugar content and a sweeter taste. \n\n② Fruits cultivated in cold regions often have a higher acidity.\n\n③ Fruits grown in sandy soil tend to have higher sugar content and a sweeter taste.\n\n④ Fruits cultivated in volcanic soil are often rich in minerals and have a higher acidity.\n\n⑤ Fruits grown with organic fertilizers tend to be sweeter than those grown with chemical fertilizers.',
      name: 'DetailAnswer1',
      desc: '',
      args: [],
    );
  }

  /// `Orchard`
  String get GoMap0 {
    return Intl.message(
      'Orchard',
      name: 'GoMap0',
      desc: '',
      args: [],
    );
  }

  /// `Shall I look up some orchards in your area?`
  String get GoMap1 {
    return Intl.message(
      'Shall I look up some orchards in your area?',
      name: 'GoMap1',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get GoMap2 {
    return Intl.message(
      'Cancel',
      name: 'GoMap2',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get GoMap3 {
    return Intl.message(
      'OK',
      name: 'GoMap3',
      desc: '',
      args: [],
    );
  }

  /// `Is it okay to run around while picking fruits in the orchard?`
  String get mannerQuestions0 {
    return Intl.message(
      'Is it okay to run around while picking fruits in the orchard?',
      name: 'mannerQuestions0',
      desc: '',
      args: [],
    );
  }

  /// `Are there any rules about how to pick the fruits?`
  String get mannerQuestions1 {
    return Intl.message(
      'Are there any rules about how to pick the fruits?',
      name: 'mannerQuestions1',
      desc: '',
      args: [],
    );
  }

  /// `What happens if it rains on the day? Do I need to cancel?`
  String get mannerQuestions2 {
    return Intl.message(
      'What happens if it rains on the day? Do I need to cancel?',
      name: 'mannerQuestions2',
      desc: '',
      args: [],
    );
  }

  /// `Would it be better to make a reservation?`
  String get mannerQuestions3 {
    return Intl.message(
      'Would it be better to make a reservation?',
      name: 'mannerQuestions3',
      desc: '',
      args: [],
    );
  }

  /// `What kind of clothes should I wear?`
  String get mannerQuestions4 {
    return Intl.message(
      'What kind of clothes should I wear?',
      name: 'mannerQuestions4',
      desc: '',
      args: [],
    );
  }

  /// `Is there anything else I should bring?`
  String get mannerQuestions5 {
    return Intl.message(
      'Is there anything else I should bring?',
      name: 'mannerQuestions5',
      desc: '',
      args: [],
    );
  }

  /// `How do I find out the orchard's rules?`
  String get mannerQuestions6 {
    return Intl.message(
      'How do I find out the orchard\'s rules?',
      name: 'mannerQuestions6',
      desc: '',
      args: [],
    );
  }

  /// `It would be wonderful if you could enjoy picking fruits while being considerate of others. `
  String get mannerAnswers0 {
    return Intl.message(
      'It would be wonderful if you could enjoy picking fruits while being considerate of others. ',
      name: 'mannerAnswers0',
      desc: '',
      args: [],
    );
  }

  /// `It would be helpful if you could follow guidelines and handle the trees gently while picking fruits.`
  String get mannerAnswers1 {
    return Intl.message(
      'It would be helpful if you could follow guidelines and handle the trees gently while picking fruits.',
      name: 'mannerAnswers1',
      desc: '',
      args: [],
    );
  }

  /// `If it rains on the day, we recommend that you contact the orchard in advance. \n\nAlternatively, you may want to choose an all-weather farm `
  String get mannerAnswers2 {
    return Intl.message(
      'If it rains on the day, we recommend that you contact the orchard in advance. \n\nAlternatively, you may want to choose an all-weather farm ',
      name: 'mannerAnswers2',
      desc: '',
      args: [],
    );
  }

  /// `While some orchards may not require reservations, it is highly recommended that you contact the orchard before hand by phone or email to confirm availability. `
  String get mannerAnswers3 {
    return Intl.message(
      'While some orchards may not require reservations, it is highly recommended that you contact the orchard before hand by phone or email to confirm availability. ',
      name: 'mannerAnswers3',
      desc: '',
      args: [],
    );
  }

  /// `While it's great to dress up, it's also advisable to wear comfortable clothing that you don't mind getting dirty. `
  String get mannerAnswers4 {
    return Intl.message(
      'While it\'s great to dress up, it\'s also advisable to wear comfortable clothing that you don\'t mind getting dirty. ',
      name: 'mannerAnswers4',
      desc: '',
      args: [],
    );
  }

  /// `As for essential items, insect repellent, sunscreen, towels, and a cooler would be advisable for the summer. \n\nAdditionally, wet wipes would be convenient for mealtimes.`
  String get mannerAnswers5 {
    return Intl.message(
      'As for essential items, insect repellent, sunscreen, towels, and a cooler would be advisable for the summer. \n\nAdditionally, wet wipes would be convenient for mealtimes.',
      name: 'mannerAnswers5',
      desc: '',
      args: [],
    );
  }

  /// `It would be best to ask the orchard staff directly. \n\nBy following their rules, you can enjoy a satisfying fruit-picking experience.`
  String get mannerAnswers6 {
    return Intl.message(
      'It would be best to ask the orchard staff directly. \n\nBy following their rules, you can enjoy a satisfying fruit-picking experience.',
      name: 'mannerAnswers6',
      desc: '',
      args: [],
    );
  }

  /// `checklist`
  String get BelongingList {
    return Intl.message(
      'checklist',
      name: 'BelongingList',
      desc: '',
      args: [],
    );
  }

  /// `long-sleeved top`
  String get Shirt {
    return Intl.message(
      'long-sleeved top',
      name: 'Shirt',
      desc: '',
      args: [],
    );
  }

  /// `insect repellent`
  String get Spray {
    return Intl.message(
      'insect repellent',
      name: 'Spray',
      desc: '',
      args: [],
    );
  }

  /// `sunscreen`
  String get Sunscreen {
    return Intl.message(
      'sunscreen',
      name: 'Sunscreen',
      desc: '',
      args: [],
    );
  }

  /// `cap`
  String get Cap {
    return Intl.message(
      'cap',
      name: 'Cap',
      desc: '',
      args: [],
    );
  }

  /// `wet wipes`
  String get WetWipes {
    return Intl.message(
      'wet wipes',
      name: 'WetWipes',
      desc: '',
      args: [],
    );
  }

  /// `face towel`
  String get FaceTowel {
    return Intl.message(
      'face towel',
      name: 'FaceTowel',
      desc: '',
      args: [],
    );
  }

  /// `cooler`
  String get Cooler {
    return Intl.message(
      'cooler',
      name: 'Cooler',
      desc: '',
      args: [],
    );
  }

  /// `drink`
  String get Drink {
    return Intl.message(
      'drink',
      name: 'Drink',
      desc: '',
      args: [],
    );
  }

  /// `the rest`
  String get TheRest {
    return Intl.message(
      'the rest',
      name: 'TheRest',
      desc: '',
      args: [],
    );
  }

  /// `fruit count`
  String get FruitCount {
    return Intl.message(
      'fruit count',
      name: 'FruitCount',
      desc: '',
      args: [],
    );
  }

  /// `drop rate`
  String get DropRate {
    return Intl.message(
      'drop rate',
      name: 'DropRate',
      desc: '',
      args: [],
    );
  }

  /// `fruits`
  String get Hunt {
    return Intl.message(
      'fruits',
      name: 'Hunt',
      desc: '',
      args: [],
    );
  }

  /// `Answer:`
  String get QuizAnswer {
    return Intl.message(
      'Answer:',
      name: 'QuizAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Explanation:`
  String get QuizExplanation {
    return Intl.message(
      'Explanation:',
      name: 'QuizExplanation',
      desc: '',
      args: [],
    );
  }

  /// `Results announcement！`
  String get Result {
    return Intl.message(
      'Results announcement！',
      name: 'Result',
      desc: '',
      args: [],
    );
  }

  /// `Next Fruit！`
  String get NextFruit {
    return Intl.message(
      'Next Fruit！',
      name: 'NextFruit',
      desc: '',
      args: [],
    );
  }

  /// `Concluding the quiz`
  String get QuizFinish {
    return Intl.message(
      'Concluding the quiz',
      name: 'QuizFinish',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to conclude the quiz now?`
  String get FinishQuestion {
    return Intl.message(
      'Would you like to conclude the quiz now?',
      name: 'FinishQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get OK {
    return Intl.message(
      'OK',
      name: 'OK',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Score`
  String get QuizScore {
    return Intl.message(
      'Quiz Score',
      name: 'QuizScore',
      desc: '',
      args: [],
    );
  }

  /// `The number of fruits you got is... `
  String get ScoreSay1 {
    return Intl.message(
      'The number of fruits you got is... ',
      name: 'ScoreSay1',
      desc: '',
      args: [],
    );
  }

  /// `\nYour success rate is... `
  String get ScoreSay2 {
    return Intl.message(
      '\nYour success rate is... ',
      name: 'ScoreSay2',
      desc: '',
      args: [],
    );
  }

  /// `Good Job！`
  String get ScoreSay3 {
    return Intl.message(
      'Good Job！',
      name: 'ScoreSay3',
      desc: '',
      args: [],
    );
  }

  /// `For your next visit, why don't you try picking your own fruit?`
  String get FinalComment {
    return Intl.message(
      'For your next visit, why don\'t you try picking your own fruit?',
      name: 'FinalComment',
      desc: '',
      args: [],
    );
  }

  /// `All correct!`
  String get AllCorrect0 {
    return Intl.message(
      'All correct!',
      name: 'AllCorrect0',
      desc: '',
      args: [],
    );
  }

  /// `You've achieved a perfect score🤩 \nThat's impressive. \nGreat job.`
  String get AllCorrect1 {
    return Intl.message(
      'You\'ve achieved a perfect score🤩 \nThat\'s impressive. \nGreat job.',
      name: 'AllCorrect1',
      desc: '',
      args: [],
    );
  }

  /// `It would be a great experience to pick your own fresh fruits. \nI encourage you to try it. `
  String get AllCorrect2 {
    return Intl.message(
      'It would be a great experience to pick your own fresh fruits. \nI encourage you to try it. ',
      name: 'AllCorrect2',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
