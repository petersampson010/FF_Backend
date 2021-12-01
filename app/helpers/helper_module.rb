module HelperModule

    def find_from_params(field, params)
        size = params.keys.length
        if size===1 
            key = params.keys[0]
            value = params.values[0]
            return field.filter{|x| x[key].to_s===value}
        elsif size>1
            keys = params.keys
            values = params.values
            for i in (0..size-1) do 
                field=field.filter{ |x| x[keys[i]].to_s===values[i]}
            end
            return field
        else
            return field
        end
    end

end