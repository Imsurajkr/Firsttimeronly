var compare = function compareArr(arr1, arr2) {
  let len1 = arr1.length;
  let len2 = arr2.length;
  let count = 0;

  if (len1 != len2) {
    return 0;
  }

  let map1 = new Map();
  //O(N)
  for (var i = 0; i < len1; i++) {
    if (map1.get(arr1[i]) == null) map1.set(arr1[i], 1);
    else {
      count = map1.get(arr1[i]);
      map1.set(arr1[i], ++count);
    }
  }

  let map2 = new Map();
  count = 0;
  //O(N)
  for (var i = 0; i < len2; i++) {
    if (map2.get(arr2[i]) == null) map2.set(arr2[i], 1);
    else {
      count = map2.get(arr2[i]);

      map2.set(arr2[i], ++count);
    }
  }

  console.log(map1, ":", map1.keys(), ":", map1.size);
  console.log(map2, ":", map2.keys(), ":", map1.size);

  //comparing both map // O(N)
  let tempVal;
  if (map1.size !== map2.size) {
    return 0; //false
  }
  for (var [key, val] of map1) {
    tempVal = map2.get(key);

    // comparing key value
    if (tempVal !== val || (tempVal === undefined && !map2.has(key))) {
      return 0; //false
    }
  }

  return 1; // true
};

console.log(compare([1, 2, 3, 4, 4, 4, 5, 4, 5], [5, 4, 3, 1, 2, 5, 4, 4, 4]));
