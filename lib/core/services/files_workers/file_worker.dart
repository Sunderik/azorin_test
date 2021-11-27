import 'dart:async';
import 'dart:io';

/// Интерфейс сервисва для работы с файлом
abstract class IFileWorker {
  /// Получение файла или создание если его нет
  Future<File> getFile();

  /// Получение размера файла
  Future<int> getFileSize();

  /// Очищение файла
  Future<void> clearFile();

  /// Удаление файла
  Future<void> deleteFile();

  /// Получение содержимого файла
  Future<T?> getData<T>();

  /// Обновление содержимого файла
  Future<void> updateData<D>(D data);

  /// Добавление элемента к содержимому файла
  Future<void> addElement<E>(E element);

  /// Проверка наличия в файле содержимого
  ///
  /// (true - данные есть; false - данных нет)
  Future<bool> checkData();
}
