part of 'MainPageImports.dart';

class MainPageData {
  DateTime startDate = DateTime.now();
  final GenericBloc<String?> fromCubit = new GenericBloc(null);
  final GenericBloc<int> pageKeyBloc = GenericBloc(1);
  final GenericBloc<bool> paginationLoading = GenericBloc(false);
  final GenericBloc<bool> lastPage = GenericBloc(false);
  final ScrollController controller = ScrollController();
  final TextEditingController searchController = TextEditingController();
}
