with_entries(.value.tags |= (if . == null then [] else map(ascii_downcase) end | unique))
