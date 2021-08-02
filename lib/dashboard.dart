import 'package:flutter/material.dart';
import 'package:minor_project/global.dart' as globalData;
import 'package:razorpay_flutter/razorpay_flutter.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  late Razorpay _razorpay;
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DashBoard')),
      body: _bodywidget(),
    );
  }

  Widget _bodywidget() {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.yellowAccent])),
        ),
        Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(50.0)),
              Text(
                "WELCOME BACK",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    foreground: Paint()),
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Text(
                "" + globalData.username,
                style: TextStyle(
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..color = Colors.red[900]!,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  paynow();
                },
                child: Text("Pay now "),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }
  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void paynow() {
    var options = {
      'key': '6sjXwFiPOP0mIT6fKgxOVQZ8',
      'amount': 5000, //in the smallest currency sub-unit.
      'name': 'Verzeo',
      'description': 'Flutter Course',
      'timeout': 60, // in seconds
      'prefill': {'contact': '66398894416', 'email': 'rmudit5@gmail.com'}
    };
    _razorpay.open(options);
  }
}
