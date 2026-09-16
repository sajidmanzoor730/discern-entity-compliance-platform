import React from 'react';
export default function App(){
 return (
  <div style={{padding:20}}>
   <h1>Discern Clone - Entity Compliance Platform</h1>
   <p>Stack: React, TypeScript, Go, Temporal, sqlc, PostgreSQL, GKE, Kibu</p>
   <p>Monitors entity status, standing, filing requirements across US jurisdictions</p>
   <table border={1} cellPadding={8}>
    <tr><th>Name</th><th>Jurisdiction</th><th>Status</th><th>Standing</th></tr>
    <tr><td>Acme LLC</td><td>Delaware</td><td>active</td><td>good</td></tr>
   </table>
  </div>
 );
}
