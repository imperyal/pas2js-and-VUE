<template>
  <div>
    <div>
      First number in array: {{ arrStr }}
    </div>
    <div v-if="arrNums">
      <span v-for="(num, index) in arrNums" :key="index">
        {{ num }}
      </span>
    </div>
  </div>
</template>

<script>
export default {
  name: "ListNums",
  props: {
    arrNums: {
      type: Array,
      required: true
    },
    arrStr:  {
      type: String,
      required: true
    }
  }
};
</script>