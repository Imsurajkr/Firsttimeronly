/**
 * Converts seconds into HH:MM:SS format
 * @param {String} seconds Total seconds
 * @returns HH:MM:SS
 */
export const secondToMinutes = (seconds) => {
  let total = new Date(seconds * 1000).toISOString().substr(11, 8)
  if (seconds <= 3599) {
    return total.substring(3)
  } else return total
}
