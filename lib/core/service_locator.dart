
import 'package:get_it/get_it.dart';
import 'package:news_app/data/data_source/remote_data_source/firebase_remote_data_source.dart';
import 'package:news_app/data/data_source/remote_data_source/news_remote_data_source.dart';
import 'package:news_app/data/repository/news_repo.dart';
import 'package:news_app/domain/repository/base_firebase_repo.dart';
import 'package:news_app/domain/repository/base_news_repo.dart';
import 'package:news_app/domain/usecases/news_usecase.dart';
import 'package:news_app/domain/usecases/sign_up_usecase.dart';
import 'package:news_app/presentation/controller/auth_controller/auth_bloc.dart';
import '../data/repository/firebase_repo.dart';

final sl=GetIt.instance;

class ServiceLocator{
  void init(){
    sl.registerFactory(() => AuthBloc(sl()));
    sl.registerLazySingleton<BaseFireBaseRemoteDataSource>(() => FireBaseRemoteDataSource());
    sl.registerLazySingleton<BaseFireBaseRepo>(() => FireBaseRepo(sl()));
    sl.registerLazySingleton(() => SignUpUseCase(sl()));
    sl.registerLazySingleton(() => NewsUseCase(sl()));
    sl.registerLazySingleton<BaseNewsRepo>(() => NewsRepo(sl()));
    sl.registerLazySingleton<BaseNewsRemoteDataSource>(() => NewsRemoteDataSource());
  }
}