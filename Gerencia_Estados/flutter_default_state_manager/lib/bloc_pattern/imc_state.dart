class ImcState {
  final double imc;
  ImcState({
    required this.imc,
  });
}

//classe do loading
class ImcStateLoading extends ImcState {
  ImcStateLoading() : super(imc: 0);
}
