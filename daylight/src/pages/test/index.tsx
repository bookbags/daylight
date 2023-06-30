import React, { useCallback, useMemo, useState } from 'react';
import A from "./a";
import B from "./b";
import { Button } from 'antd';

const App: React.FC = () => {
  const [num ,setNum] = useState(0);
  const CacheA = React.memo(A);
  useCallback
  return (
    <div>
      <CacheA></CacheA>
      <B></B>
      <Button 
        onClick={
          ()=>{
            setNum(num + 1);
          }
        }
      >
        add
      </Button>
    </div>
  ) 
}

export default App;