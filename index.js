import { query } from "./db.js"

const rows = await query( `SELECT now() as time;` )

console.log( rows )
