import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:meta/meta.dart';

part 'botton_nav_event.dart';

class BottonNavBloc extends Bloc<BottonNavEvent, int> {
  BottonNavBloc() : super(0) {
    on<BottonNavEvent>(
      (event, emit) {
        switch (event) {
          case BottonNavEvent.home:
            emit(0);
            break;
          case BottonNavEvent.star:
            emit(1);
            break;
          case BottonNavEvent.profile:
            emit(2);
            break;
        }
      },
    );
  }
}
