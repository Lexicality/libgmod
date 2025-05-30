--- @meta

_G.FSASYNC_ERR_NOT_MINE = -8
_G.FSASYNC_ERR_RETRY_LATER = -7
_G.FSASYNC_ERR_ALIGNMENT = -6
_G.FSASYNC_ERR_FAILURE = -5
_G.FSASYNC_ERR_READING = -4
_G.FSASYNC_ERR_NOMEMORY = -3
_G.FSASYNC_ERR_UNKNOWNID = -2
_G.FSASYNC_ERR_FILEOPEN = -1
_G.FSASYNC_OK = 0
_G.FSASYNC_STATUS_PENDING = 1
_G.FSASYNC_STATUS_INPROGRESS = 2
_G.FSASYNC_STATUS_ABORTED = 3
_G.FSASYNC_STATUS_UNSERVICED = 4

--- Used by file.AsyncRead.  
--- @alias EFSASYNC `FSASYNC_ERR_NOT_MINE`|`FSASYNC_ERR_RETRY_LATER`|`FSASYNC_ERR_ALIGNMENT`|`FSASYNC_ERR_FAILURE`|`FSASYNC_ERR_READING`|`FSASYNC_ERR_NOMEMORY`|`FSASYNC_ERR_UNKNOWNID`|`FSASYNC_ERR_FILEOPEN`|`FSASYNC_OK`|`FSASYNC_STATUS_PENDING`|`FSASYNC_STATUS_INPROGRESS`|`FSASYNC_STATUS_ABORTED`|`FSASYNC_STATUS_UNSERVICED`
