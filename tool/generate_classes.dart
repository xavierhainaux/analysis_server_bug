import 'dart:io';

main() {
  new Directory('lib/gen')
    ..deleteSync()
    ..createSync();
  for (int i = 0; i < 2000; i++) {
    new File('lib/gen/c_$i.dart').writeAsStringSync('''
class A$i { }
''');
  }
}

