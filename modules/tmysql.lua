--- @meta

_G.tmysql = {
	Version = 4.5,
	Commit = "635234a",
	info = { MYSQL_VERSION = 0, MYSQL_INFO = "" },
	flags = {
		CLIENT_FOUND_ROWS = 2,
		CLIENT_LONG_FLAG = 4,
		CLIENT_CONNECT_WITH_DB = 8,
		CLIENT_NO_SCHEMA = 16,
		CLIENT_COMPRESS = 32,
		CLIENT_ODBC = 64,
		CLIENT_LOCAL_FILES = 128,
		CLIENT_IGNORE_SPACE = 256,
		CLIENT_TRANSACTIONS = 8192,
		CLIENT_RESERVED = 16384,
		CLIENT_MULTI_STATEMENTS = 65536,
		CLIENT_MULTI_RESULTS = 131072,
		CLIENT_PS_MULTI_RESULTS = 262144
	},
	--- @enum TMySQLOption
	opts = {
		-- TODO: I don't have the actual values for these handy (and tbh it
		-- doesn't matter) so these are all going to be 0 for now
		MYSQL_DEFAULT_AUTH = 0,
		MYSQL_ENABLE_CLEARTEXT_PLUGIN = 0,
		MYSQL_INIT_COMMAND = 0,
		MYSQL_OPT_BIND = 0,
		MYSQL_OPT_CAN_HANDLE_EXPIRED_PASSWORDS = 0,
		MYSQL_OPT_COMPRESS = 0,
		MYSQL_OPT_CONNECT_ATTR_ADD = 0,
		MYSQL_OPT_CONNECT_ATTR_DELETE = 0,
		MYSQL_OPT_CONNECT_ATTR_RESET = 0,
		MYSQL_OPT_CONNECT_TIMEOUT = 0,
		MYSQL_OPT_GUESS_CONNECTION = 0,
		MYSQL_OPT_LOCAL_INFILE = 0,
		MYSQL_OPT_NAMED_PIPE = 0,
		MYSQL_OPT_PROTOCOL = 0,
		MYSQL_OPT_READ_TIMEOUT = 0,
		MYSQL_OPT_RECONNECT = 0,
		MYSQL_OPT_SSL_CA = 0,
		MYSQL_OPT_SSL_CAPATH = 0,
		MYSQL_OPT_SSL_CERT = 0,
		MYSQL_OPT_SSL_CIPHER = 0,
		MYSQL_OPT_SSL_CRL = 0,
		MYSQL_OPT_SSL_CRLPATH = 0,
		MYSQL_OPT_SSL_ENFORCE = 0,
		MYSQL_OPT_SSL_KEY = 0,
		MYSQL_OPT_SSL_VERIFY_SERVER_CERT = 0,
		MYSQL_OPT_USE_EMBEDDED_CONNECTION = 0,
		MYSQL_OPT_USE_REMOTE_CONNECTION = 0,
		MYSQL_OPT_USE_RESULT = 0,
		MYSQL_OPT_WRITE_TIMEOUT = 0,
		MYSQL_PLUGIN_DIR = 0,
		MYSQL_READ_DEFAULT_FILE = 0,
		MYSQL_READ_DEFAULT_GROUP = 0,
		MYSQL_REPORT_DATA_TRUNCATION = 0,
		MYSQL_SECURE_AUTH = 0,
		MYSQL_SERVER_PUBLIC_KEY = 0,
		MYSQL_SET_CHARSET_DIR = 0,
		MYSQL_SET_CHARSET_NAME = 0,
		MYSQL_SET_CLIENT_IP = 0,
		MYSQL_SHARED_MEMORY_BASE_NAME = 0
	}
}

--- Returns all active connections
--- @return TMySQLDB[]
--- @nodiscard
function tmysql.GetTable() end

--- Creates a new database connection, but does not connect it yet so you can
--- set extra options on it.
--- @see TMySQLDB.SetOption
--- @see TMySQLDB.Connect
--- @param host string
--- @param username string
--- @param password string
--- @param database string
--- @param port? integer
--- @param socket? string
--- @param flags? number
--- @param callback? fun(db: TMySQLDB): nil
--- @return TMySQLDB db # The unconnected database
--- @nodiscard
function tmysql.Create(host, username, password, database, port, socket, flags, callback)
end

--- Creates and immediately connects to a database
--- @param host string
--- @param username string
--- @param password string
--- @param database string
--- @param port? integer
--- @param socket? string
--- @param flags? number
--- @param callback? fun(db: TMySQLDB): nil
--- @return TMySQLDB | false db, string? error # The database is returned on success otherwise, false and an error is returned
--- @nodiscard
function tmysql.Connect(host, username, password, database, port, socket, flags, callback)
end

--- @class TMySQLResultSuccess
--- @field affected number The number of rows affected by the query
--- @field lastid number The index of the last row inserted by the query
--- @field results {number: table}
--- @field time number How long the query took to execute
local ressucc = { success = true }

--- @class TMySQLResultFailure
--- @field error string The error string from MySQL
--- @field errorid number The MySQL errno
--- @field time number How long the query took to execute
local resfail = { success = false }

--- @alias TMySQLResult TMySQLResultSuccess | TMySQLResultFailure

---
--- @class TMySQLPreparedStatement
local pstatement = {}

---
--- @return boolean
--- @nodiscard
function pstatement:IsValid() end

---
--- Returns the number of parameters that MySQL expects in order to run the
--- statement
--- @return number
--- @nodiscard
function pstatement:GetArgCount() end

-- This was absolutely horrendous to type because the module author decided to
-- put the vararg at the FRONT of the function which cannot be correctly
-- expressed in Lua types (presumably because it can't be done in Lua itself
-- without a bunch of fucking about)

--- Runs the prepared statement
--- @param callabck fun(results: TMySQLResult): nil
--- @param value? nil
--- @param colunmNumbers? boolean
function pstatement:Run(callabck, value, colunmNumbers) end

--- @param p0 any
--- @param callabck fun(results: TMySQLResult): nil
--- @param unused? nil
--- @param colunmNumbers? boolean
function pstatement:Run(p0, callabck, unused, colunmNumbers) end

--- @param p0 any
--- @param p1 any
--- @param callabck fun(results: TMySQLResult): nil
--- @param unused? nil
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, callabck, unused, colunmNumbers) end

--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param callabck fun(results: TMySQLResult): nil
--- @param unused? nil
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, p2, callabck, unused, colunmNumbers) end

--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param callabck fun(results: TMySQLResult): nil
--- @param unused? nil
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, p2, p3, callabck, unused, colunmNumbers) end

--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param callabck fun(results: TMySQLResult): nil
--- @param unused? nil
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, p2, p3, p4, callabck, unused, colunmNumbers) end

--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param callabck fun(results: TMySQLResult): nil
--- @param unused? nil
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, p2, p3, p4, p5, callabck, unused, colunmNumbers) end

--- @generic T
--- @param callabck fun(value: T, results: TMySQLResult): nil
--- @param value `T`
--- @param colunmNumbers? boolean
function pstatement:Run(callabck, value, colunmNumbers) end

--- @generic T
--- @param p0 any
--- @param callabck fun(value: T, results: TMySQLResult): nil
--- @param value `T`
--- @param colunmNumbers? boolean
function pstatement:Run(p0, callabck, value, colunmNumbers) end

--- @generic T
--- @param p0 any
--- @param p1 any
--- @param callabck fun(value: T, results: TMySQLResult): nil
--- @param value `T`
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, callabck, value, colunmNumbers) end

--- @generic T
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param callabck fun(value: T, results: TMySQLResult): nil
--- @param value `T`
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, p2, callabck, value, colunmNumbers) end

--- @generic T
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param callabck fun(value: T, results: TMySQLResult): nil
--- @param value `T`
--- @param colunmNumbers? boolean
--- @generic T
function pstatement:Run(p0, p1, p2, p3, callabck, value, colunmNumbers) end

--- @generic T
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param callabck fun(value: T, results: TMySQLResult): nil
--- @param value `T`
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, p2, p3, p4, callabck, value, colunmNumbers) end

--- @generic T
--- @param p0 any
--- @param p1 any
--- @param p2 any
--- @param p3 any
--- @param p4 any
--- @param p5 any
--- @param callabck fun(value: T, results: TMySQLResult): nil
--- @param value `T`
--- @param colunmNumbers? boolean
function pstatement:Run(p0, p1, p2, p3, p4, p5, callabck, value, colunmNumbers) end

function pstatement:Run(...) end

--- @class TMySQLDB
local db = {}

--- @return boolean
--- @nodiscard
function db:IsValid() end

--- Immediately runs a query against the database
--- @param query string The SQL to execute
--- @param callabck? fun(results: TMySQLResult): nil The callback to execute when the query completes
--- @param unused? nil
--- @param colunmNumbers? boolean Supresses the column names in the results data
function db:Query(query, callabck, unused, colunmNumbers)
end

--- Immediately runs a query against the database, passing an extra value to the callback
--- @generic T
--- @param query string
--- @param callabck fun(value: T, results: TMySQLResult): nil The callback to execute when the query completes
--- @param value `T` A reference to provide the callback (for example the player the query is about)
--- @param colunmNumbers? boolean Supresses the column names in the results data
function db:Query(query, callabck, value, colunmNumbers)
end

--- Creates a prepared statement object
--- @param query string
--- @return TMySQLPreparedStatement
--- @nodiscard
function db:Prepare(query) end

--- @param value string
--- @return string
--- @nodiscard
function db:Escape(value) end

--- Sets a mysql_option for the connection. Use with tmysql.Create then call Connect() after you set the options you want.
--- @see tmysql.Create
--- @see TMySQLDB.SetCharacterSet
--- @see TMySQLDB.Connect
--- @param option TMySQLOption
--- @param value string
--- @return boolean success, string error
--- @nodiscard
function db:SetOption(option, value) end

--- @return string
--- @nodiscard
function db:GetServerInfo() end

--- @return string
--- @nodiscard
function db:GetDatabase() end

--- @return string
--- @nodiscard
function db:GetHostInfo() end

--- @return number
--- @nodiscard
function db:GetServerVersion() end

--- Starts and connects the database for tmysql.Create
--- @see tmysql.Create
--- @return boolean success, string error
--- @nodiscard
function db:Connect() end

--- @return boolean
--- @nodiscard
function db:IsConnected() end

--- Ends the connection for this database and calls all pending callbacks
--- immediately.
--- Any method calls to this database, from now on, will error.
function db:Disconnect() end

--- @param charset string
--- @return boolean success, string error
--- @nodiscard
function db:SetCharacterSet(charset) end

--- "You have to manually poll now - it's faster, by a lot. Trust me."
function db:Poll() end
