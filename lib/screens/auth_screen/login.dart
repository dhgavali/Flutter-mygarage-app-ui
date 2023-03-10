import 'package:bee/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const routeName = "login";

  LoginPage({Key? key}) : super(key: key);

  final _controller = TextEditingController();
  String _phoneNumber = "";

  void get_otp_button(BuildContext ctx) {
    _phoneNumber = _controller.text;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Theme.of(context).primaryColor, Colors.white],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              stops: [0.5, 0]),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            Text(
              "My Garage",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "We Keep Your Engine\n Running",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: size.height * 0.12,
            ),
            Text(
              "Glad to you here !",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: size.height * 0.005,
                horizontal: size.width * 0.1,
              ),
              child: Text(
                "Login using your mobile number.",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: size.height * 0.005,
                horizontal: size.width * 0.07,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        "icons/flags/png/in.png",
                        package: "country_icons",
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Flexible(
                      child: TextFormField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixText: "+91  ",
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () => get_otp_button(context),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).primaryColor,
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(size.width * 0.8, size.height * 0.05),
                ),
                maximumSize: MaterialStateProperty.all(
                  Size(size.width * 0.9, size.height * 0.08),
                ),
                elevation: MaterialStateProperty.all(6),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
              child: Text(
                "GET OTP",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 22, right: 22, top: 5, bottom: 3),
              child: Text(
                "By signing in you agree to our",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "Terms of Service & Privacy Policy",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.25,
                ),
                Text(
                  "Don???t have an account?",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteName.SignUp_screen);
                  },
                  style: ButtonStyle(
                    splashFactory:
                        InkSparkle.constantTurbulenceSeedSplashFactory,
                    // surfaceTintColor: MaterialStateProperty.all(Colors.red),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: MaterialStateProperty.all(const Size(0, 5)),
                  ),
                  child: Text(
                    "Create",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Colors.red,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
