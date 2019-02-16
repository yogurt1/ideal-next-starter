import React, { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);
  return (
    <>
      <h1>Counter: {count}</h1>
      <button onClick={()=> setCount(count + 1)}>Increment</button>
    </>
  )
}

export default Counter