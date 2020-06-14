mysqloo = {
	VERSION = 9,
	MINOR_VERSION = 6,
	DATABASE_CONNECTED = 0,
	DATABASE_CONNECTING = 1,
	DATABASE_CONNECTION_FAILED = 3,
	DATABASE_NOT_CONNECTED = 2,
	OPTION_CACHE = 8,
	OPTION_INTERPRET_DATA = 4,
	OPTION_NAMED_FIELDS = 2,
	OPTION_NUMERIC_FIELDS = 1,
	QUERY_ABORTED = 4,
	QUERY_COMPLETE = 3,
	QUERY_NOT_RUNNING = 0,
	QUERY_RUNNING = 1,
	QUERY_WAITING = 5,
}

--- @class MySQLOOQuery
local Query = {}

--- Starts the query.
function Query:start()
end

--- True if the query is running or waiting, false if it isn't.
--- @return boolean
function Query:isRunning()
end

--- Gets the data the query returned from the server
--- Format: { row1, row2, row3, ... }
--- Row format: { field_name = field_value } or {first_field, second_field, ...} if OPTION_NUMERIC_FIELDS is enabled
--- @return table
function Query:getData()
end

--- Attempts to abort the query if it is still in the state QUERY_WAITING
--- Returns true if aborting was successful, false otherwise
--- @return boolean
function Query:abort()
end

--- Gets the autoincrement index of the last inserted row of the current result set
--- @return number
function Query:lastInsert()
end

--- Gets the status of the query.
--- @return number @mysqloo.QUERY_* enums
function Query:status()
end

--- Gets the number of rows the query has affected (of the current result set)
--- @return number
function Query:affectedRows()
end

--- Changes how the query returns data (mysqloo.OPTION_* enums).
--- @param option number
function Query:setOption(option)
end

--- Forces the server to wait for the query to finish.
--- This should only ever be used if it is really necessary, since it can cause lag and
--- If shouldSwap is true, the query is being swapped to the front of the queue
--- making it the next query to be executed
--- @param shouldSwap boolean
function Query:wait(shouldSwap)
end

--- Gets the error caused by the query (if any).
--- @return string
function Query:error()
end

--- Returns true if the query still has more data associated with it (which means getNextResults() can be called)
--- @return boolean
function Query:hasMoreResults()
end

--- Pops the current result set, chaning the results of lastInsert() and affectedRows()  and getData()
--- to those of the next result set. Returns the rows of the next result set in the same format as getData()
--- Throws an error if attempted to be called when there is no result set left to be popped
--- @return table
function Query:getNextResults()
end

--- Callbacks
--- ALWAYS set these callbacks before you start the query or you might run into issues

--- Called when the query is aborted.
--- @param q MySQLOOQuery
function Query.onAborted(q)
end

--- Called when the query errors
--- @param q MySQLOOQuery
--- @param err string
--- @param sql string @the SQL query that caused it.
function Query.onError(q, err, sql)
end

--- Called when the query is successful, [Table] data is the data the query returned.
--- @param q MySQLOOQuery
--- @param data table
function Query.onSuccess(q, data)
end

--- Called when the query retrieves a row of data, [Table] data is the row.
--- @param q MySQLOOQuery
--- @param data table
function Query.onData(q, data)
end

--- @class MySQLOOPreparedQuery : MySQLOOQuery
--- A prepared query uses a prepared statement that, instead of having the actual values of
--- new rows, etc. in the query itself, it uses parameters, that can be set using the appropriate methods
--- PreparedStatements make sql injections pretty much impossible since the data is sent seperately from the parameterized query
--- Prepared queries also make it easy to reuse one query several times to insert/update/delete multiple rows
--- An example of a parameterized query would be "INSERT INTO users (`steamid`, `nick`) VALUES(?,?)"
--- A few types of queries might not work with prepared statements
--- For more information about prepared statements you can read here: [url]https://en.wikipedia.org/wiki/Prepared_statement[/url]
local PreparedQuery = {}

--- Sets the parameter at index (1-based) to be of type double with value number
--- @param index number
--- @param number number
function PreparedQuery:setNumber(index, number)
end

--- Sets the parameter at index (1-based) to be of type string with value str
--- Note: str should not!! be escaped
--- @param index number
--- @param str string
function PreparedQuery:setString(index, str)
end

--- Sets the parameter at index (1-based) to be of type boolean with value bool
--- @param index number
--- @param bool boolean
function PreparedQuery:setBoolean(index, bool)
end

--- Sets the parameter at index (1-based) to be NULL
--- @param index number
function PreparedQuery:setNull(index)
end

--- Clears all currently set parameters inside the prepared statement.
function PreparedQuery:clearParameters()
end

--- This shouldn't be used anymore, just start the same prepared multiple times with different parameters
function PreparedQuery:putNewParameters()
end

--- @class MySQLOOTransaction : MySQLOOQuery
--- Transaction object
--- Transactions are used to group several seperate queries or prepared queries together.
--- Either all queries in the transaction are executed successfully or none of them are.
--- Please note that single queries are already transactions by themselves so it usually only makes sense to have transactions
--- with at least two queries.
--- Since mysqloo works async, much of the power of transactions (such as manually rolling back a transaction) cannot be used properly, but
--- there's still many areas they can be useful.
--- Important note: Callbacks of individual queries that are part of the transactions are not run (both in error and successful case). Use the callbacks of the transaction instead.
local Transaction = {}

--- Adds a query to the transaction. The callbacks of the added queries will not be called.
--- query can be either a PreparedQuery or a regular Query
--- @param query MySQLOOQuery
function Transaction:addQuery(query)
end

--- Returns all queries that have been added to this transaction.
--- @return table<number, MySQLOOQuery>
function Transaction:getQueries()
end

--- Called when any of the queries caused an error, no queries will have had any effect
--- @param tr MySQLOOTransaction
--- @param err string
function Transaction.onError(tr, err)
end

--- Called when all queries in the transaction have been executed successfully
function Transaction.onSuccess()
end

--- @class MySQLOODatabase
local Database = {}

--- Connects to the database (non blocking)
--- This function calls the onConnected or onConnectionFailed callback
function Database:connect()
end

--- disconnects from the database and waits for all queries to finish if shouldWait is true
--- @param shouldWait boolean
function Database:disconnect(shouldWait)
end

--- Initializes a query to the database, [String] sql is the SQL query to run.
--- @return MySQLOOQuery
function Database:query(sql)
end

--- Creates a prepared query associated with the database
--- @return MySQLOOPreparedQuery
function Database:prepare(sql)
end

--- Creates a transaction that executes multiple statements atomically
--- Check [url]https://en.wikipedia.org/wiki/ACID[/url] for more information
--- @return MySQLOOTransaction
function Database:createTransaction()
end

--- Escapes [String] str so that it is safe to use in a query.
--- If the characterset of the database is changed after connecting, this might not work properly anymore
--- @param str string
--- @return string
function Database:escape(str)
end

--- Aborts all waiting (QUERY_WAITING) queries
--- @return number @the amount of queries aborted successfully
function Database:abortAllQueries()
end

--- Checks the connection to the database
--- This shouldn't be used to detect timeouts to the server anymore (it's not possible anymore)
--- @return number @mysqloo.DATABASE_* enums
function Database:status()
end

--- The autoreconnect feature of mysqloo can be disabled if this function is called with shouldReconnect = false
--- This has to be called before Database:connect() to work
--- @param shouldReconnect boolean
function Database:setAutoReconnect(shouldReconnect)
end

--- Multi statements ("SELECT 1; SELECT 2;") can be disabled if this function is called with useMultiStatemets = false
--- This has to be called before Database:connect() to work
--- @param useMultiStatemets boolean
function Database:setMultiStatements(useMultiStatemets)
end

--- This will disable all caching of prepared query handles
--- which will reduce the performance of prepared queries that are being reused
--- Set this to true if you run into the prepared query limit imposed by the server
--- @param cachePreparedStatements boolean
function Database:setCachePreparedStatements(cachePreparedStatements)
end

--- Forces the server to wait for the connection to finish. (might cause deadlocks)
--- This has to be called after Database:connect()
function Database:wait()
end

--- Gets the MySQL servers version
--- @return number
function Database:serverVersion()
end

--- Fancy string of the MySQL servers version
--- @return string
function Database:serverInfo()
end

--- Gets information about the connection.
--- @return string
function Database:hostInfo()
end

--- Gets the amount of queries waiting to be processed
--- @return number
function Database:queueSize()
end

--- Actively checks if the database connection is still up and attempts to reconnect if it is down
--- This will freeze your server for at least 2 times the pingtime to
--- the database server if the connection is down
--- @return boolean @true if the connection is still up, false otherwise
function Database:ping()
end

--- Attempts to set the connection's character set to the one specified.
--- Please note that this does block the main server thread if there is a query currently being ran
--- Returns true on success, false and an error message on failure
--- @param charSetName string
--- @return boolean, string
function Database:setCharacterSet(charSetName)
end

--- Called when the connection to the MySQL server is successful
--- @param db MySQLOODatabase
function Database.onConnected(db)
end

--- Called when the connection to the MySQL server fails
--- @param db MySQLOODatabase
--- @param err string
function Database.onConnectionFailed(db, err)
end

---
--- Initializes the database object, note that this does not actually connect to the database.
--- @param host string
--- @param username string
--- @param password string
--- @param database string
--- @param port string
--- @param socket string
--- @return MySQLOODatabase
function mysqloo.connect(host, username, password, database, port, socket)
end
