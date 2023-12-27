import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/features/main/presentation/manager/counter/counter_cubit.dart';
import 'package:flutter_counter/features/main/presentation/widgets/counter_widget.dart';
import 'package:flutter_counter/injection_container.dart';

class CounterPage extends StatelessWidget {
  static const route = "/";

  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CounterCubit>(),
      child: const CounterWidget(),
    );
  }
}
