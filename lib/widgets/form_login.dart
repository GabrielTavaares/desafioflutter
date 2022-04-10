import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormLoginWidget extends StatelessWidget {
  const FormLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Center(
            child: Image.asset("assets/images/logo.png", scale: 3),
          ),
          Center(
            child: Text(
              "Tênis Store",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: SvgPicture.asset("assets/icons/login.svg"),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).primaryColor, width: 1),
                borderRadius: BorderRadius.circular(100),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffDDDDDD), width: 1),
                borderRadius: BorderRadius.circular(100),
              ),
              hintText: "Login",
              hintStyle: const TextStyle(
                color: Color(0xff5E5E5E),
                fontSize: 16,
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 2),
          TextField(
            decoration: InputDecoration(
              prefixIcon: SvgPicture.asset("assets/icons/cadeado.svg"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).primaryColor, width: 1),
                borderRadius: BorderRadius.circular(100),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffDDDDDD), width: 1),
                borderRadius: BorderRadius.circular(100),
              ),
              hintText: "Senha",
              hintStyle: const TextStyle(
                color: Color(0xff5E5E5E),
                fontSize: 16,
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: double.maxFinite,
              height: 48,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                ),
                onPressed: () {},
                child: const Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFFFFFF)),
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                  "assets/icons/icon_google.svg"),
                            ),
                          ),
                          Container(
                            child: Text(
                              "GOOGLE",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFFFFFF)),
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                  "assets/icons/icon_facebook.svg"),
                            ),
                          ),
                          Container(
                            child: Text(
                              "FACEBOOK",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Container(
                    child: const Expanded(
                      child: Text(
                        "Junte se a nós.",
                        textAlign: TextAlign.end,
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Text(
                        " Criar conta",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
