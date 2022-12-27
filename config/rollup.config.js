export default [{
  input: "npm/cocooned.js",
  output: {
    file: "app/assets/javascripts/cocooned.js",
    format: "umd",
    name: "Cocooned",
    globals: {
      jquery: '$'
    }
  },
  external: ['jquery']
}]
