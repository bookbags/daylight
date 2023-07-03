type A = {
    a:number;
    b:string;
}

type B = {
    b:number;
    c:number;
}

type C = A | B;

type D = A & B;
const c:C  = {
   b:1,
   c:2
};