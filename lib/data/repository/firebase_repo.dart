import 'package:news_app/data/data_source/remote_data_source/firebase_remote_data_source.dart';
import 'package:news_app/domain/entities/userEntity.dart';
import 'package:news_app/domain/repository/base_firebase_repo.dart';

class FireBaseRepo extends BaseFireBaseRepo{
  final BaseFireBaseRemoteDataSource baseFireBaseRemoteDataSource;
  FireBaseRepo(this.baseFireBaseRemoteDataSource);

  @override
  Future<void> signUp(String email, String password) async{
     final result=await baseFireBaseRemoteDataSource.signUp(email,password);
     return result;
  }
  
}