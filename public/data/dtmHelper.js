let _pas     = {};
let _arrNums = [];
let _strNum  = "";
  
  const dataInterface = {
    getNumsArray: function () {
      return _arrNums;
    },
    getNumsArrayStr: function () {
        _strNum = _pas.program.getNumStr();    // Pascal function call
        return _strNum;
      },
    incNumsArray: function () {
      _pas.program.pubGen.incAll();            // Pascal function call
    },
    setDataObj: function (pasObj) {
      _pas     = pasObj;                       // Dependency injection of the Pascal generated JS
      _arrNums = _pas.program.pubGen.arr_10;  // _arrNums will be the same array (pointer) has the one in Pascal generated JS
    }
  };
  
  export default dataInterface;