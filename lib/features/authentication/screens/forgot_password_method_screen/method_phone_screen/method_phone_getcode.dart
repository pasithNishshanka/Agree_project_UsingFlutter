import 'package:app/common/custom_shape/containers/circular_design_container.dart';
import 'package:app/common/custom_shape/widgets/text_inputs/text_input_field.dart';
import 'package:app/features/authentication/screens/forgot_password_method_screen/method_email_screen/verify_getcode_email.dart';
import 'package:app/features/authentication/screens/forgot_password_method_screen/method_phone_screen/verify_getcode_phone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/mediaQuery.dart';
import '../../../../../utils/constants/text_strings.dart';

class MethodPhone extends StatelessWidget {
  const MethodPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: CircularDesignContainer(
                backText: 'Back',
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(height: MediaQueryUtils.getHeight(context) * .3),
                      // Header text
                      Center(
                        child: Text(
                          EcoTexts.mpnHeader,
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // This is eco image
                      // eco image
                      Image(
                        image: const AssetImage(
                          TImages.ecoIcon,
                        ),
                        height: MediaQueryUtils.getHeight(context) * .3,
                      ),
                      SizedBox(
                          height: MediaQueryUtils.getHeight(context) * .005),

                      // Get email input to send opt
                      const EcoInputField(
                          maxLength: 10,
                          keyboardtype: TextInputType.number,
                          icon: Icons.mobile_friendly,
                          labelText: 'Enter phone number(0*******)'),

                      SizedBox(
                          height: MediaQueryUtils.getHeight(context) * .025),
                      SizedBox(
                        width: MediaQueryUtils.getWidth(context) * .9,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const VerifyGetCodeMobile());
                          },
                          child: const Text(
                            'Send Code',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
