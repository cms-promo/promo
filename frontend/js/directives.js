export default (Vue) => {
  Vue.directive("digits", {
    update (el) {
      if (el.value !== '') {
        el.value = el.value.replace(/[^0-9.]+/g, '');
      }
    }
  })
}
