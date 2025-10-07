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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `What kind of help do you need with\nfruit picking?`
  String get catchphrase {
    return Intl.message(
      'What kind of help do you need with\nfruit picking?',
      name: 'catchphrase',
      desc: '',
      args: [],
    );
  }

  /// `List`
  String get list {
    return Intl.message('List', name: 'list', desc: '', args: []);
  }

  /// `Memory`
  String get memory {
    return Intl.message('Memory', name: 'memory', desc: '', args: []);
  }

  /// `Quiz`
  String get quiz {
    return Intl.message('Quiz', name: 'quiz', desc: '', args: []);
  }

  /// `[Home]Please close the screen and try again`
  String get getData {
    return Intl.message(
      '[Home]Please close the screen and try again',
      name: 'getData',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message('Options', name: 'options', desc: '', args: []);
  }

  /// `Copyright Notice`
  String get credits {
    return Intl.message(
      'Copyright Notice',
      name: 'credits',
      desc: '',
      args: [],
    );
  }

  /// `Review This App`
  String get review {
    return Intl.message('Review This App', name: 'review', desc: '', args: []);
  }

  /// `Could Not Launch Store`
  String get notLaunchStore {
    return Intl.message(
      'Could Not Launch Store',
      name: 'notLaunchStore',
      desc: '',
      args: [],
    );
  }

  /// `Photo・illustration\n\n`
  String get photoIllustration {
    return Intl.message(
      'Photo・illustration\n\n',
      name: 'photoIllustration',
      desc: '',
      args: [],
    );
  }

  /// `・Top Page : Image courtesy of Pexels\n\n・List Page, and Quiz Page : Images courtesy of PhotoAC and IllustrationAC\n\n・Manners Page, and Copyright Page: Image courtesy of IllustrationAC\n\n`
  String get topPage {
    return Intl.message(
      '・Top Page : Image courtesy of Pexels\n\n・List Page, and Quiz Page : Images courtesy of PhotoAC and IllustrationAC\n\n・Manners Page, and Copyright Page: Image courtesy of IllustrationAC\n\n',
      name: 'topPage',
      desc: '',
      args: [],
    );
  }

  /// `Font and Icon Name\n\n`
  String get fontIcon {
    return Intl.message(
      'Font and Icon Name\n\n',
      name: 'fontIcon',
      desc: '',
      args: [],
    );
  }

  /// `・Google Font\n\n・FontAwesomeIcon`
  String get googleFontFontAwesomeIcon {
    return Intl.message(
      '・Google Font\n\n・FontAwesomeIcon',
      name: 'googleFontFontAwesomeIcon',
      desc: '',
      args: [],
    );
  }

  /// `Banner Ad Display`
  String get ado {
    return Intl.message('Banner Ad Display', name: 'ado', desc: '', args: []);
  }

  /// `Please select if you would like to allow personalized ads. \n\nBy allowing personalized ads, you can reduce the display of ads that are less relevant to your interests.\n\nPlease note that we do not collect your personal information through this process.\n\n`
  String get adoText {
    return Intl.message(
      'Please select if you would like to allow personalized ads. \n\nBy allowing personalized ads, you can reduce the display of ads that are less relevant to your interests.\n\nPlease note that we do not collect your personal information through this process.\n\n',
      name: 'adoText',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to the next page.`
  String get next {
    return Intl.message(
      'Proceed to the next page.',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Number of Questions`
  String get questionCount {
    return Intl.message(
      'Number of Questions',
      name: 'questionCount',
      desc: '',
      args: [],
    );
  }

  /// `How many questions will you answer?`
  String get howManyQuestions {
    return Intl.message(
      'How many questions will you answer?',
      name: 'howManyQuestions',
      desc: '',
      args: [],
    );
  }

  /// `10Q`
  String get tenQuestions {
    return Intl.message('10Q', name: 'tenQuestions', desc: '', args: []);
  }

  /// `20Q`
  String get twentyQuestions {
    return Intl.message('20Q', name: 'twentyQuestions', desc: '', args: []);
  }

  /// `30Q`
  String get thirtyQuestions {
    return Intl.message('30Q', name: 'thirtyQuestions', desc: '', args: []);
  }

  /// `Seasonal Fruits`
  String get fruitList {
    return Intl.message(
      'Seasonal Fruits',
      name: 'fruitList',
      desc: '',
      args: [],
    );
  }

  /// `We apologize, but we were unable to retrieve the requested data.\n Please close this window and try again later.`
  String get attention {
    return Intl.message(
      'We apologize, but we were unable to retrieve the requested data.\n Please close this window and try again later.',
      name: 'attention',
      desc: '',
      args: [],
    );
  }

  /// `All Season`
  String get all {
    return Intl.message('All Season', name: 'all', desc: '', args: []);
  }

  /// `Spring`
  String get springFruit {
    return Intl.message('Spring', name: 'springFruit', desc: '', args: []);
  }

  /// `Summer`
  String get summerFruit {
    return Intl.message('Summer', name: 'summerFruit', desc: '', args: []);
  }

  /// `Autumn`
  String get autumnFruit {
    return Intl.message('Autumn', name: 'autumnFruit', desc: '', args: []);
  }

  /// `Winter`
  String get winterFruit {
    return Intl.message('Winter', name: 'winterFruit', desc: '', args: []);
  }

  /// `1. What makes freshness so important for enjoying delicious fruits?`
  String get detailQuestion0 {
    return Intl.message(
      '1. What makes freshness so important for enjoying delicious fruits?',
      name: 'detailQuestion0',
      desc: '',
      args: [],
    );
  }

  /// `2. What are the major production areas?`
  String get detailQuestion1 {
    return Intl.message(
      '2. What are the major production areas?',
      name: 'detailQuestion1',
      desc: '',
      args: [],
    );
  }

  /// `2-2. What factors should I consider when choosing a production area?`
  String get detailQuestion2 {
    return Intl.message(
      '2-2. What factors should I consider when choosing a production area?',
      name: 'detailQuestion2',
      desc: '',
      args: [],
    );
  }

  /// `3. What are the well-known cultivars? `
  String get detailQuestion3 {
    return Intl.message(
      '3. What are the well-known cultivars? ',
      name: 'detailQuestion3',
      desc: '',
      args: [],
    );
  }

  /// `3-2. Which varieties have the highest sugar content?`
  String get detailQuestion4 {
    return Intl.message(
      '3-2. Which varieties have the highest sugar content?',
      name: 'detailQuestion4',
      desc: '',
      args: [],
    );
  }

  /// `3-3. Which varieties are seedless?`
  String get detailQuestion5 {
    return Intl.message(
      '3-3. Which varieties are seedless?',
      name: 'detailQuestion5',
      desc: '',
      args: [],
    );
  }

  /// `4. When is the best season to eat fruits? `
  String get detailQuestion6 {
    return Intl.message(
      '4. When is the best season to eat fruits? ',
      name: 'detailQuestion6',
      desc: '',
      args: [],
    );
  }

  /// `5. What are the nutritional values?`
  String get detailQuestion7 {
    return Intl.message(
      '5. What are the nutritional values?',
      name: 'detailQuestion7',
      desc: '',
      args: [],
    );
  }

  /// `5-2. What are the benefits of nutrients?`
  String get detailQuestion8 {
    return Intl.message(
      '5-2. What are the benefits of nutrients?',
      name: 'detailQuestion8',
      desc: '',
      args: [],
    );
  }

  /// `6. What is the cost of a harvest experience?`
  String get detailQuestion9 {
    return Intl.message(
      '6. What is the cost of a harvest experience?',
      name: 'detailQuestion9',
      desc: '',
      args: [],
    );
  }

  /// `7. How can I tell if it's ripe?`
  String get detailQuestion10 {
    return Intl.message(
      '7. How can I tell if it\'s ripe?',
      name: 'detailQuestion10',
      desc: '',
      args: [],
    );
  }

  /// `Fresh fruits have a great taste and aroma, and their nutrients remain intact. \n\nThey are also rich in dietary fiber and can help boost your immune system.`
  String get detailAnswer0 {
    return Intl.message(
      'Fresh fruits have a great taste and aroma, and their nutrients remain intact. \n\nThey are also rich in dietary fiber and can help boost your immune system.',
      name: 'detailAnswer0',
      desc: '',
      args: [],
    );
  }

  /// `① Fruits grown in warm climates tend to have higher sugar content and a sweeter taste. \n\n② Fruits cultivated in cold regions often have a higher acidity.\n\n③ Fruits grown in sandy soil tend to have higher sugar content and a sweeter taste.\n\n④ Fruits cultivated in volcanic soil are often rich in minerals and have a higher acidity.\n\n⑤ Fruits grown with organic fertilizers tend to be sweeter than those grown with chemical fertilizers.`
  String get detailAnswer1 {
    return Intl.message(
      '① Fruits grown in warm climates tend to have higher sugar content and a sweeter taste. \n\n② Fruits cultivated in cold regions often have a higher acidity.\n\n③ Fruits grown in sandy soil tend to have higher sugar content and a sweeter taste.\n\n④ Fruits cultivated in volcanic soil are often rich in minerals and have a higher acidity.\n\n⑤ Fruits grown with organic fertilizers tend to be sweeter than those grown with chemical fertilizers.',
      name: 'detailAnswer1',
      desc: '',
      args: [],
    );
  }

  /// `Orchard`
  String get goMap0 {
    return Intl.message('Orchard', name: 'goMap0', desc: '', args: []);
  }

  /// `Shall I look up some orchards in your area?`
  String get goMap1 {
    return Intl.message(
      'Shall I look up some orchards in your area?',
      name: 'goMap1',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get goMap2 {
    return Intl.message('Cancel', name: 'goMap2', desc: '', args: []);
  }

  /// `OK`
  String get goMap3 {
    return Intl.message('OK', name: 'goMap3', desc: '', args: []);
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

  /// `Manner`
  String get manner {
    return Intl.message('Manner', name: 'manner', desc: '', args: []);
  }

  /// `The Rest`
  String get theRest {
    return Intl.message('The Rest', name: 'theRest', desc: '', args: []);
  }

  /// `Fruit Count`
  String get fruitCount {
    return Intl.message('Fruit Count', name: 'fruitCount', desc: '', args: []);
  }

  /// `Drop Rate`
  String get dropRate {
    return Intl.message('Drop Rate', name: 'dropRate', desc: '', args: []);
  }

  /// `Fruits`
  String get hunt {
    return Intl.message('Fruits', name: 'hunt', desc: '', args: []);
  }

  /// `Answer:`
  String get quizAnswer {
    return Intl.message('Answer:', name: 'quizAnswer', desc: '', args: []);
  }

  /// `Explanation:`
  String get quizExplanation {
    return Intl.message(
      'Explanation:',
      name: 'quizExplanation',
      desc: '',
      args: [],
    );
  }

  /// `Results announcement！`
  String get result {
    return Intl.message(
      'Results announcement！',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Next Fruit！`
  String get nextFruit {
    return Intl.message('Next Fruit！', name: 'nextFruit', desc: '', args: []);
  }

  /// `Concluding the quiz`
  String get quizFinish {
    return Intl.message(
      'Concluding the quiz',
      name: 'quizFinish',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to conclude the quiz now?`
  String get finishQuestion {
    return Intl.message(
      'Would you like to conclude the quiz now?',
      name: 'finishQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Quiz Score`
  String get quizScore {
    return Intl.message('Quiz Score', name: 'quizScore', desc: '', args: []);
  }

  /// `The number of fruits you got is... `
  String get scoreSay1 {
    return Intl.message(
      'The number of fruits you got is... ',
      name: 'scoreSay1',
      desc: '',
      args: [],
    );
  }

  /// `\nYour success rate is... `
  String get scoreSay2 {
    return Intl.message(
      '\nYour success rate is... ',
      name: 'scoreSay2',
      desc: '',
      args: [],
    );
  }

  /// `Good Job！`
  String get scoreSay3 {
    return Intl.message('Good Job！', name: 'scoreSay3', desc: '', args: []);
  }

  /// `For your next visit, why don't you try picking your own fruit?`
  String get finalComment {
    return Intl.message(
      'For your next visit, why don\'t you try picking your own fruit?',
      name: 'finalComment',
      desc: '',
      args: [],
    );
  }

  /// `All correct!`
  String get allCorrect0 {
    return Intl.message(
      'All correct!',
      name: 'allCorrect0',
      desc: '',
      args: [],
    );
  }

  /// `You've achieved a perfect score🤩 \nThat's impressive. \nGreat job.`
  String get allCorrect1 {
    return Intl.message(
      'You\'ve achieved a perfect score🤩 \nThat\'s impressive. \nGreat job.',
      name: 'allCorrect1',
      desc: '',
      args: [],
    );
  }

  /// `It would be a great experience to pick your own fresh fruits. \nI encourage you to try it. `
  String get allCorrect2 {
    return Intl.message(
      'It would be a great experience to pick your own fresh fruits. \nI encourage you to try it. ',
      name: 'allCorrect2',
      desc: '',
      args: [],
    );
  }

  /// `Record List`
  String get recordList {
    return Intl.message('Record List', name: 'recordList', desc: '', args: []);
  }

  /// `Fruit Picking Record`
  String get fruitPickingRecord {
    return Intl.message(
      'Fruit Picking Record',
      name: 'fruitPickingRecord',
      desc: '',
      args: [],
    );
  }

  /// `Pick A Date`
  String get pickADate {
    return Intl.message('Pick A Date', name: 'pickADate', desc: '', args: []);
  }

  /// `Fruit Type`
  String get fruitType {
    return Intl.message('Fruit Type', name: 'fruitType', desc: '', args: []);
  }

  /// `Farm Name`
  String get farmName {
    return Intl.message('Farm Name', name: 'farmName', desc: '', args: []);
  }

  /// `Memo (Optional)`
  String get memo {
    return Intl.message('Memo (Optional)', name: 'memo', desc: '', args: []);
  }

  /// `Pick Photo`
  String get pickAPhoto {
    return Intl.message('Pick Photo', name: 'pickAPhoto', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `No Photo`
  String get noPhoto {
    return Intl.message('No Photo', name: 'noPhoto', desc: '', args: []);
  }

  /// `Edit Record`
  String get editRecord {
    return Intl.message('Edit Record', name: 'editRecord', desc: '', args: []);
  }

  /// `Delete Record`
  String get deleteRecord0 {
    return Intl.message(
      'Delete Record',
      name: 'deleteRecord0',
      desc: '',
      args: [],
    );
  }

  /// `Delete this record?`
  String get deleteRecord1 {
    return Intl.message(
      'Delete this record?',
      name: 'deleteRecord1',
      desc: '',
      args: [],
    );
  }

  /// `Deleted`
  String get deleteRecord2 {
    return Intl.message('Deleted', name: 'deleteRecord2', desc: '', args: []);
  }

  /// `Full screen`
  String get fullScreen {
    return Intl.message('Full screen', name: 'fullScreen', desc: '', args: []);
  }

  /// `Image Deletion Failed`
  String get photoMessage1 {
    return Intl.message(
      'Image Deletion Failed',
      name: 'photoMessage1',
      desc: '',
      args: [],
    );
  }

  /// `Saved.`
  String get photoMessage2 {
    return Intl.message('Saved.', name: 'photoMessage2', desc: '', args: []);
  }

  /// `Record shared successfully`
  String get photoMessage3 {
    return Intl.message(
      'Record shared successfully',
      name: 'photoMessage3',
      desc: '',
      args: [],
    );
  }

  /// `Failed to share image`
  String get photoMessage4 {
    return Intl.message(
      'Failed to share image',
      name: 'photoMessage4',
      desc: '',
      args: [],
    );
  }

  /// `Failed to share text`
  String get photoMessage5 {
    return Intl.message(
      'Failed to share text',
      name: 'photoMessage5',
      desc: '',
      args: [],
    );
  }

  /// `🍓✨ I went fruit picking ✨🍇`
  String get shareTitle {
    return Intl.message(
      '🍓✨ I went fruit picking ✨🍇',
      name: 'shareTitle',
      desc: '',
      args: [],
    );
  }

  /// `📅{dateLabel}: {date}`
  String shareDate(Object dateLabel, Object date) {
    return Intl.message(
      '📅$dateLabel: $date',
      name: 'shareDate',
      desc: '',
      args: [dateLabel, date],
    );
  }

  /// `🤩{fruitTypeLabel}: {fruitType}`
  String shareFruitType(Object fruitTypeLabel, Object fruitType) {
    return Intl.message(
      '🤩$fruitTypeLabel: $fruitType',
      name: 'shareFruitType',
      desc: '',
      args: [fruitTypeLabel, fruitType],
    );
  }

  /// `🌳{farmNameLabel}: {farmName}`
  String shareFarmName(Object farmNameLabel, Object farmName) {
    return Intl.message(
      '🌳$farmNameLabel: $farmName',
      name: 'shareFarmName',
      desc: '',
      args: [farmNameLabel, farmName],
    );
  }

  /// `📝{memoLabel}: {memo}`
  String shareMemo(Object memoLabel, Object memo) {
    return Intl.message(
      '📝$memoLabel: $memo',
      name: 'shareMemo',
      desc: '',
      args: [memoLabel, memo],
    );
  }

  /// `#FruitPicking #Fruits #StrawberryPicking #GrapePicking #FruitTrip`
  String get shareHashtags {
    return Intl.message(
      '#FruitPicking #Fruits #StrawberryPicking #GrapePicking #FruitTrip',
      name: 'shareHashtags',
      desc: '',
      args: [],
    );
  }

  /// `There are some blank fields.`
  String get check1 {
    return Intl.message(
      'There are some blank fields.',
      name: 'check1',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message('Required', name: 'required', desc: '', args: []);
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
