part of 'lang_bloc.dart';

@immutable
abstract class LangState {}

class LangInitial extends LangState {}

class LangChangeState extends LangState {
  final String lang;
  LangChangeState(this.lang);
}
