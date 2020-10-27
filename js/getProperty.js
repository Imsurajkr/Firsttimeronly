/**
 * Find and returns the property of an object without throwing undefined error and return default value
 * @param {Object} object Object
 * @param {String | Array<String>} path Path of the required property in array or string
 * @param {any} defaultValue Default value which will be returned if the required path is undefined
 */
export const getProperty = (object, path, defaultValue) => {
  var fullPath = path
    .replace(/\[/g, '.')
    .replace(/]/g, '')
    .split('.')
    .filter(Boolean)

  return fullPath.every(everyFunc) ? object : defaultValue

  function everyFunc(step) {
    return !(step && (object = object[step]) === undefined)
  }
}
