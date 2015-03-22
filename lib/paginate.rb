public

def paginate(options)
    options  = options.dup
    pagenum  = options.fetch(:page) { raise ArgumentError, ":page parameter required" }
    per_page = options.fetch(:per_page)
    total    = options.delete(:total_entries)

    count_options = options.delete(:count)
    options.delete(:page)
    rel = limit(per_page.to_i).offset(pagenum)
    rel.wp_count_options = count_options    if count_options
    rel.total_entries = total.to_i          unless total.blank?
    rel
end