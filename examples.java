//"Function" to filter odd numbers
​public​ List<Integer> filterOdds(List<Integer> list) {
​  List<Integer> filteredList = ​new​ ArrayList<Integer>();
​
  ​for​(Integer element : list) {
​    ​if​(1 == element % 2) {
​      filteredList.add(element);
​    }
​  }
  return filteredList;
}

//"Function" with parameterized logic
​public​ List<Integer> filter(List<Integer> list, Predicate predicate) {
​  List<Integer> filteredList = ​new​ ArrayList<Integer>();
​ 
    ​for​ (Integer element : list) {
​        ​if​ (predicate.evaluate(element)) {
​            filteredList.add(element);
​        }
​    }
​    ​return​ filteredList;
​}

public​ ​interface​ Predicate {
    public​ ​boolean​ evaluate(Integer arg);
}

​​class​ IsEven ​implements​ Predicate {
​
    ​public​ ​boolean​ evaluate(Integer arg) {
​        ​return​ 0 == arg % 2;
​    }
}

​class​ IsOdd ​implements​ Predicate {
​
    ​public​ ​boolean​ evaluate(Integer arg) {
​        ​return​ 1 == arg % 2;
​    }
​}

filter(Arrays.asList(1,2,3,4), new IsEven());
filter(Arrays.asList(1,2,3,4), new IsOdd());

//Java 8
Arrays
  .asList("elm", "elixir", "scala", "clojure", "haskell")
  .stream()
  .filter(str -> !"elixir".equals(str))
  .collect(Collectors.toList());


//iteractive fibonacci
static int fibo_iter(int n) {
    int x = 0, y = 1, z = 1;
    for (int i = 0; i < n; i++) {
        x = y;
        y = z;
        z = x + y;
    }
    return x;
}

//recursive fibonacci
static int fibo_recur(int  n) {
    if ((n == 1) || (n == 0)) {
        return n;
    }
    return fibo_recur(n - 1) + fibo_recur(n - 2);
}
