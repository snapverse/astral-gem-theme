import React, { FunctionComponent } from 'react';
import * as _ from 'lodash';
import type { EpicType } from '@types/epic-types';

export default function greeting(name: string) {
  // this is a comment
  return `Hello ${name}`;
}

const regex = /([Aa]|[Bb])/

type StoreController = (request: any, response: any) => { sucess: boolean, data: any };

const store: StoreController = (request, response) => {
  const a = request.body.content.loaded + 2
  if (isAdmin) {
    // admin stuff
  } else if (isColaborator) {
    // colaborators stuff
  } else {
    // something else
  }
  const data = {};
  // ...  

  return {
    sucess: true,
    data,
  };
}

enum MyEnum {
  console = 1,
  log = 2,
}

console.info('hi mars!')
const CONSTANT_VAR = 2 ?? 2
let exponential = 2 ** 2
var substract = 2 - 2 - 0
const obj = {
  'foo': [1, 2, 3, 4, 5, 6],
  bar: { 'a': true, 'b': false }
}

const x = Number(obj.bar.a) + 20
const { bar: barFoo, foo: fooBar } = obj
export type T1<T = EpicType | null | unknown | undefined> = T[] | unknown | never[] | T | string | number | null

/**
 * @param {Number} console - log print stuff
 */
interface Greet {
  name: string
  lastName: string
  timeout: (ms: number) => Awaited<unknown>
  sleep: (fn: () => void, ...args: unknown[]) => Promise<any>
}

function Decorator() {
  console.log("f(): evaluated");
  return function(target, propertyKey: string, descriptor: PropertyDescriptor) {
    console.log("f(): called");
  };
}

class Sample {
  @Decorator()
  protected method () {

  }
}

abstract class GreeterSkeleton implements Greet {
    name: string;
    lastName: string;
    
    constructor([name, lastName]) {
      this.name = name;
      this.lastName = lastName;
    }

    public abstract timeout (ms: number): Awaited<unknown>

    async sleep(fn, ...args) {
      await this.timeout(3000)
      return fn(...args)
    }

    public static getFullName (fullName: string) {
      return fullName
    }
}

class Greeter extends GreeterSkeleton {
  fullName: string = `${this.name} ${this.lastName}`

  constructor(name: string, lastName: string) {
    super(['John', 'Doe'])
  }

  async timeout(ms: number) {
    return new Promise(resolve => {
      setTimeout(resolve, ms)
    })
  }
}
