// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BalanceController on _BalanceControllerBase, Store {
  final _$hiddenAtom = Atom(name: '_BalanceControllerBase.hidden');

  @override
  bool get hidden {
    _$hiddenAtom.reportRead();
    return super.hidden;
  }

  @override
  set hidden(bool value) {
    _$hiddenAtom.reportWrite(value, super.hidden, () {
      super.hidden = value;
    });
  }

  final _$_BalanceControllerBaseActionController =
      ActionController(name: '_BalanceControllerBase');

  @override
  void showBalance() {
    final _$actionInfo = _$_BalanceControllerBaseActionController.startAction(
        name: '_BalanceControllerBase.showBalance');
    try {
      return super.showBalance();
    } finally {
      _$_BalanceControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hidden: ${hidden}
    ''';
  }
}
