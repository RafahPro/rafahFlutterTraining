import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'lang_event.dart';
part 'lang_state.dart';

class LangBloc extends Bloc<LangEvent, LangState> {
  String lang = 'ar';
  LangBloc() : super(LangInitial()) {
    on<LangEvent>((event, emit) {
      // TODO: implement event handler

      if (event is LangEnglishEvent) {
        lang = 'en';
        emit(LangChangeState(lang));
      } else if (event is LangFrenchEvent) {
        lang = 'fr';
        emit(LangChangeState(lang));
      } else if (event is LangArabicEvent) {
        lang = 'ar';
        emit(LangChangeState(lang));
      }
    });
  }
}
