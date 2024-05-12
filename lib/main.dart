import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes_app/core/utils/constants/constants.dart';
import 'package:notes_app/features/home/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/app_bloc_observer.dart';
import 'package:notes_app/features/splash/presentation/views/splash_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  Bloc.observer = AppBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => NotesCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Notes App',
            theme: ThemeData(
              brightness: Brightness.dark,
              fontFamily: 'Poppins',
            ),
            home: const SplashView(),
          ),
        );
      }),
    );
  }
}
