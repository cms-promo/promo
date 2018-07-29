export default (Vue) => {
  Vue.filter('toFix', v => Number(v).toFixed(1))
  Vue.filter('toInt', v => parseInt(v))
}
