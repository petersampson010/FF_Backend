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

    def jwt_encode(payload, expiration = 24.hours.from_now.to_i)
        payload[:exp] = expiration
        return JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
    end 

    def jwt_decode(token)
        return JWT.decode(token, Rails.application.secrets.secret_key_base, 'HS256')[0]
    end 

    def authenticate_request
        auth_header = request.headers["Authorization"]
        puts auth_header
        token = auth_header.split(' ').last if auth_header
        puts token
        begin
            @decoded = jwt_decode(token)
            @current_user = User.find(@decoded["user_id"])
            puts @user
        rescue ActiveRecord::RecordNotFound => e
            render json: { errors: e.message }, status: :unauthorized
        rescue JWT::DecodeError => e
            render json: { errors: e.message }, status: :unauthorized
        end
    end 

end