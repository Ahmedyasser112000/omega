import 'package:tf_custom_widgets/utils/generic_cubit/generic_cubit.dart';

class WelcomeModel {
  String image;
  String desc;
  String title;
  bool last;
  bool first;
  int? index;
  GenericBloc<int> pageCubit;

  WelcomeModel({
    required this.image,
    required this.title,
    required this.desc,
    this.last = false,
    this.first = false,
    this.index,
    required this.pageCubit,
  });
}
