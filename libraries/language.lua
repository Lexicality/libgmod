--- The language library is used for translation.  
_G.language = {}
--- Adds a language item. Language placeholders preceded with "#" are replaced with full text in Garry's Mod once registered with this function.  
--- @param placeholder string @The key for this phrase, without the preceding "#".
--- @param fulltext string @The phrase that should be displayed whenever this key is used.
function language.Add(placeholder, fulltext)
end

--- Retrieves the translated version of inputted string. Useful for concentrating multiple translated strings.  
--- @param phrase string @The phrase to translate
--- @return string @The translated phrase, or the input string if no translation was found
function language.GetPhrase(phrase)
end
