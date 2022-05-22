type StringArray = Array<string>;
type NumberArray = Array<number>;
type ObjectWithNameArray = Array<{ name: string }>;
type Combined = { a: number } & { b: string };
type Conflicting = { a: number } & { a: string };
declare function pad(s: string, n: number, direction: "left" | "right"): string;
type Shape =
  | { kind: "circle"; radius: number }
  | { kind: "square"; x: number }
  | { kind: "triangle"; x: number; y: number };