import 'package:evcharge/features/report/presentation/view/widgets/report_header_info.dart';
import 'package:evcharge/features/report/presentation/view/widgets/show_dialog.dart';
import 'package:evcharge/core/widgets/custom_button.dart';
import 'package:evcharge/features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:evcharge/core/util/helper/google_map.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'widgets/custom_phone_field.dart';

class ReportMalfunction extends StatefulWidget {
  const ReportMalfunction({super.key});

  @override
  State<ReportMalfunction> createState() => _ReportMalfunctionState();
}

class _ReportMalfunctionState extends State<ReportMalfunction> {
  String? name, phone;
  GlobalKey<FormState> keyForm = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Form(
          key: keyForm,
          autovalidateMode: autovalidateMode,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ReportHeaderInfo(),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    name = value;
                  },
                  hintText: S.of(context).your_name,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomPhoneField(
                  onSaved: (value) {
                    phone = value.toString();
                    print(phone);
                  },
                  hintText: S.of(context).your_phone,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    child: CustomGoogleMap(
                      latLng: LatLng(
                        0,
                        0,
                      ),
                      zoom: 17,
                    )),
                SizedBox(
                  height: 16,
                ),
                CustomButton(
                    onTap: () {
                      if (keyForm.currentState!.validate()) {
                        keyForm.currentState!.save();
                        ShowDialog(context);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                    text: S.of(context).submite_buttom)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
