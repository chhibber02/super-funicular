import 'package:flutter_bloc/flutter_bloc.dart';

import 'item.dart';

class ItemBloc extends Cubit<List<Item>> {
  ItemBloc() : super([]);

  void addItem(Item item) {
    emit(state..add(item));
  }
}
