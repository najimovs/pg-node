import { Pool } from "pg"

const pool = new Pool( {
	user: "postgres",
	host: "localhost",
	database: "my_app",
	password: "math",
	port: 5432,
	max: 20,
	idleTimeoutMillis: 30_000,
	connectionTimeoutMillis: 2_000,
} )

let client = null

export async function query( sql, data = [] ) {

	try {

		client = await pool.connect()

		const result = await client.query( sql, data )

		return result.rows
	}
	finally {

		client.release()
	}
}
