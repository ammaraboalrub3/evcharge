import 'package:evcharge/core/service/api_service.dart';
import 'package:evcharge/core/service/get_it_services.dart';
import 'package:evcharge/core/util/app_colors.dart';
import 'package:evcharge/core/util/app_images.dart';
import 'package:evcharge/core/util/app_styles.dart';
import 'package:evcharge/features/calculate/presentation/view/widgets/custom_container.dart';
import 'package:evcharge/features/calculate/data/model/price_model.dart';
import 'package:evcharge/core/widgets/custom_button.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../data_source/price_info_data_source.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  TextEditingController controllerUserInput = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  double userInput = 0;
  PriceModel priceModel = PriceModel(price: 0);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CustomContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${priceModel.price} JD",
                        style: AppStyles.bold20
                            .copyWith(color: AppColors.kSecondaryColor)),
                    Text(S.of(context).amount,
                        style: AppStyles.regular12
                            .copyWith(color: AppColors.greyColor)),
                    const SizedBox(
                      height: 24,
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    userInput == 0
                        ? Text("$userInput kWh",
                            style: AppStyles.bold20
                                .copyWith(color: AppColors.kSecondaryColor))
                        : Text("$userInput kWh", style: AppStyles.bold20),
                    Text(S.of(context).electricy_used,
                        style: AppStyles.regular12
                            .copyWith(color: AppColors.greyColor)),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: CustomTextFormField(
                        maxLength: 4,
                        controller: controllerUserInput,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: CustomButton(
                          onTap: () async {
                            await validation();
                          },
                          text: S.of(context).calculate_buttom),
                    )
                  ],
                ),
              ),
              Positioned(
                  left: 90,
                  top: -60,
                  child: Image.asset(Assets.imagesLogo,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.4))
            ],
          ),
        ));
  }

  Future<void> validation() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      userInput = double.parse(controllerUserInput.text);
      autovalidateMode = AutovalidateMode.disabled;
      priceModel = await PriceInfo(apiService: getIt.get<ApiService>())
          .getPrice(kWh: userInput);
      setState(() {});
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
    controllerUserInput.clear();
  }
}
