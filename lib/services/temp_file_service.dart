abstract interface class TempFileService {
  Future<String> writeToFile(String name, String content);
}
