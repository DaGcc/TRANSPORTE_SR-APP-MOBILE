abstract class CRUDdataSource<T> {

  T create(T t);
  T readById(num id);
  T update(T t);
  T deleteById(num id);
  List<T> readAll();
  
}