
import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/customer/screens/register/widgets/register_widgets_imports.dart';
import 'package:base_flutter/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:base_flutter/general/widgets/AuthScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tf_custom_widgets/Inputs/custom_dropDown/CustomDropDown.dart';
import 'package:tf_custom_widgets/utils/CustomButtonAnimation.dart';
import 'package:tf_custom_widgets/utils/generic_cubit/generic_cubit.dart';
import 'package:tf_validator/localization/LocalizationMethods.dart';

import '../../../general/models/LocationModel.dart';
import '../../../general/screens/location_address/LocationAddressImports.dart';
import '../../../general/screens/location_address/location_cubit/location_cubit.dart';
import '../../../general/utilities/http/dio/modals/LoadingDialog.dart';
import '../../../general/utilities/routers/RouterImports.gr.dart';
import '../../../general/utilities/utils_functions/UtilsImports.dart';



part 'register.dart';
part 'register_data.dart';