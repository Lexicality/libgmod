--- The markup library only contains a single function to create a MarkupObject.  
_G.markup = {}
--- A convenience function that converts a Color into its markup ready string representation.  
--- @param col GColor @The Color to convert.
--- @return string @The markup color, for example `255,255,255`.
function markup.Color(col)
end

--- Converts a string to its escaped, markup-safe equivalent.  
--- @param text string @The string to sanitize.
--- @return string @The parsed markup object ready to be drawn.
function markup.Escape(text)
end

--- Parses markup into a MarkupObject. Currently, this only supports fonts and colors as demonstrated in the example.  
--- @param markup string @The markup to be parsed.
--- @param maxWidth? number @The max width of the output
--- @return GMarkupObject @The parsed markup object ready to be drawn via MarkupObject:Draw.
function markup.Parse(markup, maxWidth)
end
