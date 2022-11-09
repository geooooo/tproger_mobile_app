import 'dart:io' as io;

final _initialContentMockFileUri = Uri.file(
  // ignore: prefer_interpolation_to_compose_strings
  io.Directory.current.path +
  io.Platform.pathSeparator +
  'test' +
  io.Platform.pathSeparator +
  'mocks' +
  io.Platform.pathSeparator +
  'initial_content.html'
);

Future<String> getInitialContetMock() => io.File
  .fromUri(_initialContentMockFileUri)
  .readAsString();