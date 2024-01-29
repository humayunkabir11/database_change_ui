import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IndividualTherapyQ5 extends StatefulWidget {
  const IndividualTherapyQ5({super.key});

  @override
  State<IndividualTherapyQ5> createState() => _IndividualTherapyQ5State();
}

class _IndividualTherapyQ5State extends State<IndividualTherapyQ5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20,left: 24,right: 24,bottom: 54),
        child:  Column(
          children: [
            Column(

              children: [
                Column(
                  children: [
                    Text("hdhdhhdhh"),
                    SizedBox(height: 24,),
                    TextFormField(
                      // trigger validation as soon as this field value has been changed
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16,),

            Column(

              children: [
                Column(
                  children: [
                   Text(
                     "Please provide your WhatsApp Number below.",
                   ),
                    SizedBox(height: 24,),
                   TextFormField(
                  // trigger validation as soon as this field value has been changed
              autovalidateMode: AutovalidateMode.onUserInteraction,
             ),

                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
