import 'package:flutter/cupertino.dart';

class PaymentWidget {
  static Widget paymentRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Image.network(
                  "https://logos-world.net/wp-content/uploads/2020/05/PayPal-Logo.png"),
              Image.network(
                  "https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/visa-512.png"),
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/2560px-Mastercard-logo.svg.png"),
              Image.network(
                  "https://s1.q4cdn.com/692158879/files/images/brand_imagery/American-Express-Logotype-Stacked.png"),
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Maestro_logo.svg/1200px-Maestro_logo.svg.png"),
            ],
          ),
        ),
      ),
    );
  }
}
