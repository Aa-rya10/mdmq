import { useState, useEffect } from "react";

export default function App() {

  // useState hook
  const [count, setCount] = useState(0);
  const [message, setMessage] = useState("");

  // useEffect hook (runs once on load)
  useEffect(() => {
    setMessage("Component loaded successfully");
  }, []);

  // runs whenever count changes
  useEffect(() => {
    if (count > 0) {
      setMessage("Button clicked " + count + " times");
    }
  }, [count]);

  return (
    <div style={{ textAlign: "center", marginTop: "50px" }}>

      <h2>React Hooks Demo</h2>

      <p>{message}</p>

      <h3>Count: {count}</h3>

      <button onClick={() => setCount(count + 1)}>
        Increase
      </button>

      <button 
        onClick={() => setCount(0)} 
        style={{ marginLeft: "10px" }}
      >
        Reset
      </button>

    </div>
  );
}