import 'package:mobx/mobx.dart';

class Counter {
  /** Dentro do contrutor devinimos uma função para a nossa ação */
  Counter() {
    increment = Action(_increment);
  }

  /** Observables são como nosso estado. 
   * Aqui inicializamos ele com o valor 0
   */
  Observable _count = Observable(0);

  /** Getter para pegar o valor do nosso estado */
  int get count => _count.value;

  Action increment;

  void _increment() {
    _count.value++;
  }
}
