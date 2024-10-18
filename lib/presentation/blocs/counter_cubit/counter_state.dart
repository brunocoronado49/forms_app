part of 'counter_cubit.dart';

// El estado no se puede mutar ya que sus propiedades son final
class CounterState extends Equatable {
  final int counter;
  final int transactionCount;

  const CounterState({
    this.counter = 0,
    this.transactionCount = 0
  });

  // Metodo para crear nuevas copias de este estado
  copyWith({
    int? counter,
    int? transactionCount
  }) => CounterState(
    counter: counter ?? this.counter,
    transactionCount: transactionCount ?? this.transactionCount
  );

  // El equetable compara los objetos y si son iguales no aplica cambios o crea nuevos
  @override
  List<Object?> get props => [counter, transactionCount];
}

