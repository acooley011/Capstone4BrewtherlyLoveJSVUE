/**
 * Service class to extract the functionality of list and getting users.
 */
export default {

  list() {
    return fetch(`${process.env.VUE_APP_REMOTE_API}/api/breweryDetails/${this.breweryId}`)
    .then((response) => {
      return response.json();
    });
  },

  get(breweryId) {
    return fetch(`${process.env.VUE_APP_REMOTE_API}/api/breweryDetails/${this.breweryId}`)
    .then((response) => {
      return response.json();
    });
  }

}
