import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

TextEditingController nameEditingController = TextEditingController();
TextEditingController contactEditingController = TextEditingController();
TextEditingController emailEditingController = TextEditingController();
TextEditingController messageEditingController = TextEditingController();

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static final formKey = GlobalKey<FormState>();
  static dynamic contactPageGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    contactPageGlobalKey = context;
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(100),
        color: Colors.black,
        child: Column(
          children: [
            sectionHeading("Contact"),
            // contactPageHeading(),
            contactDetailsAndFormArea(),
          ],
        ),
      );
    });
  }

  // Flexible contactPageHeading() {
  //   return Flexible(
  //     flex: 3,
  //     child: Container(
  //       // color: Colors.teal,
  //       color: Colors.purple[700],
  //       child: Center(
  //         child: Text(
  //           "Contact",
  //           style: mainHeadLineStyle(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Flexible contactDetailsAndFormArea() {
    return Flexible(
      flex: 17,
      child: Container(
          // color: Colors.teal,
          color: Colors.black,
          child: contactPortions()),
    );
  }

  Widget contactPortions() {
    return !mainIsPortraitMobile()
        ? Row(
            children: [
              contactDetailsArea(),
              contactFormArea(),
            ],
          )
        : Column(
            children: [
              contactDetailsArea(),
              contactFormArea(),
            ],
          );
  }

  Widget contactDetailsArea() {
    return Flexible(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Flexible(
                flex: 1,
                child: Center(
                  child: Container(
                    child: Text("Connect me"),
                  ),
                )),
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  contactDetail(Icons.person, "Abdulla"),
                  contactDetail(Icons.place, "Malappuram, Kerala"),
                  contactDetail(Icons.mail, "abdullacforu@gmail.com"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contactDetail(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.all(mainShortSize(1)),
      decoration: BoxDecoration(
      color: Colors.red[50]?.withOpacity(0.2),
      borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(mainShortSize(1.5)),
            child: Icon(
              icon,
              color: Colors.redAccent[400],
              size: mainShortSize(4.5),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(mainShortSize(1.5)),
            child: Text(
              title,
              style: TextStyle(color: Colors.redAccent[100],fontSize: mainShortSize(3)),
            ),
          ),
        ],
      ),
    );
  }

  Widget contactFormArea() {
    return Flexible(
      child: Form(
        key: ContactPage.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.black,
                  child: const Center(child: Text("Message me")),
                ),
              ),
              Flexible(
                flex: 6,
                child: Center(
                  child: mainIsMobile()
                      ? Column(
                          children: textFormFieldList(),
                        )
                      : Row(
                          children: textFormFieldList(),
                        ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(1),
                  child: TextFormField(
                    controller: emailEditingController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (emailValue) => emailValue != null &&
                            !EmailValidator.validate(emailValue)
                        ? "Enter valid email"
                        : null,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(4),
                      labelText: "Email",
                      hintText: "Enter your email here",
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(
                        height: 0.07,
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 6,
                child: Container(
                  height: double.infinity,
                  color: Colors.black,
                  padding: const EdgeInsets.all(1),
                  child: TextFormField(
                    controller: messageEditingController,
                    maxLines: 15,
                    keyboardType: TextInputType.multiline,
                    validator: (messageValue) =>
                        messageValue != null && messageValue.length < 5
                            ? "Please enter some words"
                            : null,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(4),
                      labelText: "Message",
                      // hintText: "Enter your message here",
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(
                        height: 0.07,
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Center(
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent[400])),
                      onPressed: () {
                        /// submit button
                        submitForm();
                      },
                      child: const Text("Submit"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> textFormFieldList() {
    return [
      Flexible(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.all(1),
          child: TextFormField(
            controller: nameEditingController,
            keyboardType: TextInputType.name,
            validator: (nameValue) => nameValue != null && nameValue.length < 3
                ? "Enter Minimum 3 chareters"
                : null,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(4),
              labelText: "Name",
              hintText: "Enter your name here",
              border: OutlineInputBorder(),
              errorStyle: TextStyle(
                height: 0.07,
                fontSize: 8,
              ),
            ),
          ),
        ),
      ),
      Flexible(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.all(1),
          child: TextFormField(
            controller: contactEditingController,
            keyboardType: TextInputType.number,
            validator: (numberValue) =>
                numberValue != null && numberValue.length < 10
                    ? "Enter valid contact number"
                    : null,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(4),
              labelText: "Contact no:",
              hintText: "Enter your contact number here",
              border: OutlineInputBorder(),
              errorStyle: TextStyle(
                height: 0.07,
                fontSize: 8,
              ),
            ),
          ),
        ),
      ),
    ];
  }

  Future<void> submitForm() async {
    if (ContactPage.formKey.currentState != null) {
      if (ContactPage.formKey.currentState!.validate()) {
        print("submiting...");
        ScaffoldMessenger.of(contactPageGlobalKey).showSnackBar(
            await submitFormToGoogleSheetle() == true
                ? const SnackBar(
                    backgroundColor: Colors.green,
                    content: Center(child: Text("Thank you, submited")))
                : const SnackBar(
                    backgroundColor: Colors.orangeAccent,
                    content: Center(child: Text("Sorry ,C'nt submited"))));
      } else {
        ScaffoldMessenger.of(contactPageGlobalKey).showSnackBar(const SnackBar(
            backgroundColor: Colors.yellow,
            content: Center(child: Text("Please enter valid details"))));
      }
    }
  }
}

Future<bool> submitFormToGoogleSheetle() async {
  bool seccesSubmit;
  const sriptUrl =
      "https://script.google.com/macros/s/AKfycbwALvApnffFwLcmPAPhlADRvVYMgYep5AClrkQZnhLA7cIHeXAfp1m7GPKbm-7pudY/exec";
  String tempName = nameEditingController.text;
  String tempContact = contactEditingController.text;
  String tempEmail = emailEditingController.text;
  String tempMessage = messageEditingController.text;

  String queryString =
      "?name=$tempName&contact=$tempContact&email=$tempEmail&message=$tempMessage";
  var finalUri = Uri.parse(sriptUrl + queryString);
  try {
    var response = await http.get(finalUri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var bodyResponse = convert.jsonDecode(response.body);
      print(bodyResponse.toString());
      seccesSubmit = true;
    } else {
      print("faild submit");
      seccesSubmit = false;
    }
  } catch (e) {
    print(e.toString());
    seccesSubmit = false;
  }
  return seccesSubmit;
}
