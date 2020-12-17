# pas2js and VUE

### VUE using pas2js 
This simple demo shows a way to use pas2js with VUE, with linting, webpack, hot reload and the other bells and whistles that people use..

Breaf explanation:
- DI is used to inject the pas2js code into a JS module (/public/data/dtmHelper.js)
- In this demo, the injection is done on the App.vue file
- In the dtmHelper.js module the pas2js code is called, making it available for other JS modules
- The JS module can then be used by VUE easily

### Prevent linting of pas2js files
Added .eslintignore file with a rule to ignore js files on /data folder




## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```