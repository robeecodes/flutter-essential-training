import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: 'lib/.env')
abstract class Env{
  @EnviedField(varName: 'UNSPLASH_ACCESS',obfuscate: true)
  static String unsplashAccess=_Env.unsplashAccess;
  @EnviedField(varName: 'UNSPLASH_SECRET',obfuscate: true)
  static String unsplashSecret=_Env.unsplashSecret;
  @EnviedField(varName: 'UNSPLASH_ID',obfuscate: true)
  static String unsplashID=_Env.unsplashID;
}