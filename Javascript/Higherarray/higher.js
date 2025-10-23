// filter

const a = [1,2,3,4,5]
let b = a.filter((n)=>n%2==0)
console.log(b);

const c = [1,2,3,4,5]
let d = c.filter((n)=>n>2)
console.log(d);

const e = [6,7,8,9,10]
let f = e.filter((n)=>n>=10)
console.log(f);

const g = [12,24,45,36]
let h = g.filter((n)=>n%12==0)
console.log(h);

const i = [22,33,44,55]
let j = i.filter((n)=>n%11==0)
console.log(j);

const k = [1,2,3,4,5]
let l = k.filter((n)=>n%2!=0)
console.log(l);

const m = [5,23,87,70]
let n = m.filter((n)=>n%5!=0)
console.log(n);

const o = [5,23,87,70]
let p = o.filter((n)=>n%5==0)
console.log(p);

const q = [4,13,98,625]
let r = q.filter((n)=>n%4==0)
console.log(r);

const s = [3,6,90,2134,676]
let t = s.filter((n)=>n%3!=0)
console.log(t);

const u = [2773,7287,53453,66]
let v = u.filter((n)=>n%3==0)
console.log(v);

const w = [2,3,4,5,7]
let x = w.filter((n)=>n%2!=0)
console.log(x);

// find

const arr = [2,4,6,8]
 let newarr = arr.find((n)=>n%2==0)
 console.log(newarr);

 const arr1 = [1,2,3,4,5]
 let newarr1 = arr1.find((n)=>n%1==0)
 console.log(newarr1);

 const arr2 = [10,20,4,5]
 let newarr2 = arr2.find((n)=>n%10!=0)
 console.log(newarr2);

 const arr3 = [10,2,3,4]
 let newarr3 = arr3.find((n)=>n%10==0)
 console.log(newarr3);

 const arr4 = [20,30,40]
 let newarr4 = arr4.find((n)=>n>30)
 console.log(newarr4);

 const arr5 = [7,30,40]
 let newarr5 = arr5.find((n)=>n<30)
 console.log(newarr5);

 const arr6 = [3,4,5,6]
 let newarr6 = arr6.find((n)=>n<4)
 console.log(newarr6);

 const arr7 = [5,15,20]
 let newarr7 = arr7.find((n)=>n%5==0)
 console.log(newarr7);

 const arr8 = [10,2,30]
 let newarr8 = arr8.find((n)=>n%5!=0)
 console.log(newarr8);

 const arr9 = [9,12,15]
 let newarr9 = arr9.find((n)=>n%3==0)
 console.log(newarr9);

 const arr10 = [5,10,15]
 let newarr10 = arr10.find((n)=>n%5==0)
 console.log(newarr10);

 const arr11 = [6,12,15]
 let newarr11 = arr11.find((n)=>n%6!=0)
 console.log(newarr11);

//  reduce

const array = [1,2,3,4,5]
let newarray = array.reduce((janu,cur)=>janu*cur,0)
console.log(newarray);

const array1 = [1,2,3,4,5]
let newarray1 = array1.reduce((janu,cur)=>janu*cur,0)
console.log(newarray1);

const array2 = [1,2,3,4,5]
let newarray2 = array2.reduce((janu,cur)=>janu*cur,1)
console.log(newarray2);

const array3 = [1,2,3,4,5]
let newarray3 = array3.reduce((janu,cur)=>janu-cur,1)
console.log(newarray3);

const array4 = [2,2,2]
let newarray4 = array4.reduce((janu,cur)=>janu+cur,0)
console.log(newarray4);

const array5 = [4]
let newarray5 = array5.reduce((janu,cur)=>janu+cur,2)
console.log(newarray5);

const array6 = [4,4,4]
let newarray6 = array6.reduce((janu,cur)=>janu+cur,0)
console.log(newarray6);

const array7 = [26,8]
let newarray7 = array7.reduce((janu,cur)=>janu*cur,1)
console.log(newarray7);

const array8 = [89]
let newarray8 = array8.reduce((janu,cur)=>janu-cur,90)
console.log(newarray8);

const array9 = [67,78]
let newarray9 = array9.reduce((janu,cur)=>janu+cur,0)
console.log(newarray9);

const array10 = [5679,6576]
let newarray10 = array10.reduce((janu,cur)=>janu*cur,1)
console.log(newarray10);

const array11 = [67]
let newarray11 = array11.reduce((janu,cur)=>janu+cur,0)
console.log(newarray11);

