import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import '../../customer/models/WelcomeModel.dart';


class IndicatorDots extends StatelessWidget {
  final int dots;
  final WelcomeModel model;

  IndicatorDots({required this.dots, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: model.pageCubit,
      builder: (_, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: !model.first,
                    child: InkWell(
                      onTap: () => model.pageCubit.onUpdateData(state.data - 1),
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: 25,
                        color: MyColors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: DotsIndicator(
                      position: state.data.toDouble(),
                      dotsCount: dots,
                      decorator: DotsDecorator(
                        spacing: EdgeInsets.symmetric(horizontal: 3),
                        activeColor: MyColors.primary,
                        color: MyColors.greyWhite,
                        size: const Size.square(10),
                        activeSize: const Size(40, 10),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DefaultButton(
                title: "التالي",
                color: MyColors.primary,
                textColor: MyColors.white,
                margin: const EdgeInsets.all(20),
                onTap: () => navigate(context, model),
              ),
            ],
          ),
        );
      },
    );
  }

  void navigate(BuildContext context, WelcomeModel model) {
    if (model.last) {
      AutoRouter.of(context).push(LoginRoute());
    } else {
      model.pageCubit.onUpdateData(model.pageCubit.state.data + 1);
    }
  }
}
