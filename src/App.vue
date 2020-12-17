<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <button @click="incNums">Incrementar todos</button>
    <ListNums :arrNums="arrNums" :arrStr="arrStr" />
  </div>
</template>

<script>

import DataHelper from "../public/data/dtmHelper.js";
import ListNums   from "./components/ListNums.vue";

window.rtl.run();                    // Start pas2js code  
DataHelper.setDataObj(window.pas);   // Dependency injection of the pas2js code into DataHelper JS module

export default {
  name: 'App',
  components: {
    ListNums
  },
  data() {
    return {
      arrNums: [],
      arrStr: ""
    };
  },
  methods: {
    incNums() {
      DataHelper.incNumsArray();                    // Not all Array changes trigger reactivity in VUE
      this.arrStr = DataHelper.getNumsArrayStr();   // In this example a string is changed to trigger VUE reactivity (quick and dirty)
    }
  },
  mounted() {
    this.arrNums = DataHelper.getNumsArray();       // Bind the array to this component
    this.arrStr  = DataHelper.getNumsArrayStr();    // Init the string (used to trigger VUE reactivity)
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
