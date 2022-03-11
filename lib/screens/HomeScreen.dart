import 'package:ebook/widgets/ChoiceCard.dart';
import 'package:ebook/widgets/bestSellingAuthorsCategory.dart';
import 'package:ebook/widgets/bookSetColumns.dart';
import 'package:ebook/widgets/bookcategorylist.dart';
import 'package:ebook/widgets/buttons.dart';
import 'package:ebook/widgets/faqContainer.dart';
import 'package:ebook/widgets/feedbackContainer.dart';
import 'package:ebook/widgets/footerContainer.dart';
import 'package:ebook/widgets/freeShipingContainerfooter.dart';
import 'package:ebook/widgets/paymentRow.dart';
import 'package:ebook/widgets/searchContainer.dart';
import 'package:ebook/widgets/shippinginfoconatainer.dart';
import 'package:ebook/widgets/sliderwidget.dart';
import 'package:ebook/widgets/textwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

import 'BookListScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final title = "Grid List";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      body: ListView(children: [
        SearchContainerWidget.searchContainer(),
        SliderWidget.booksSlider(context),
        SizedBox(height: 10),
        TextWidgets.textCompareBookPrices(),
        SizedBox(height: 10),
        ShippingInfoContainerWidget.shippingInfoContainer(),
        SizedBox(height: 10),
        ButtonWidget.listofBoksButton(),
        SizedBox(height: 20),
        FaqContainerWidget.faqContainer(),
        SizedBox(height: 10),
        BookSetColumnsWidget.booksetColumns(context),
        ButtonWidget.readinglistButton(),
        BookCategoryListWidget.bookcategories(),
        Divider(color: Colors.black),
        TextWidgets.pupularbooksText(),
        SizedBox(height: 10),
        SliderWidget.popularbooksSlider(context),
        SizedBox(height: 10),
        ButtonWidget.discovermoreButton(),
        SizedBox(height: 30),
        TextWidgets.weekbookText(),
        SizedBox(height: 20),
        SliderWidget.weekbookSlider(context),
        SizedBox(height: 20),
        ButtonWidget.sellersButton(),
        SizedBox(height: 20),
        TextWidgets.wishbookText(),
        SizedBox(height: 20),
        SliderWidget.wishbookSlider(context),
        SizedBox(height: 20),
        ButtonWidget.wishlistButton(),
        SizedBox(height: 20),
        TextWidgets.comingsoonText(),
        SizedBox(height: 20),
        SliderWidget.newReleases(context),
        SizedBox(height: 20),
        ButtonWidget.comingsoonButton(),
        SizedBox(height: 20),
        BookSetColumnsWidget.booksetColumns2(context),
        SizedBox(height: 20),
        BestSellingAuthorCategoriesWidget.bestsellingAuthorsCategories(),
        SizedBox(height: 20),
        TextWidgets.booklistCategoriesText(),
        SizedBox(height: 20),
        BookCategoryListWidget.bookcategoriesList(),
        SizedBox(height: 20),
        BookCategoryListWidget.bookcategories(),
        SizedBox(height: 20),
        ButtonWidget.bookcategoriesButton(),
        FreeShippingContainerWidget.freeShippingContainer(),
        SizedBox(width: 20),
        SizedBox(height: 20),
        ButtonWidget.listbookstoresButton(),
        SizedBox(width: 20),
        SizedBox(height: 20),
        PaymentWidget.paymentRow(context),
        SizedBox(width: 20),
        SizedBox(height: 20),
        FeedbackWidget.feedbackContainer(context),
        SizedBox(height: 20),
        FooterWidget.footerWidget()
      ]),
    );
  }

  void _navigateBook(Choice choice) {
    Toast.show(choice.title, context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookListScreen(choice: choice)),
    );
  }
}
