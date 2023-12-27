import 'package:flutter_counter/features/main/presentation/manager/counter/counter_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> injectDependencies() async{
  // Cubit
  sl.registerFactory<CounterCubit>(() => CounterCubit());
}