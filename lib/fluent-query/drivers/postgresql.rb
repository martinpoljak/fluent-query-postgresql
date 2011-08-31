# encoding: utf-8
require "fluent-query/drivers/dbi"
require "fluent-query/drivers/exception"
require "fluent-query/drivers/shared/tokens/sql"

module FluentQuery
    module Drivers

         ##
         # PostgreSQL database driver.
         #
         
         class PostgreSQL < FluentQuery::Drivers::DBI

            ##
            # Known tokens index.
            # (internal cache)
            #

            @@__known_tokens = Hash::new do |hash, key| 
                hash[key] = { }
            end

            ##
            # Indicates token is known.
            #

            public
            def known_token?(group, token_name)
                super(group, token_name, @@__known_tokens)
            end


            ##### QUOTING

            ##
            # Quotes string.
            #

            public
            def quote_string(string)
                "E" << super(string)
            end
            
            ##
            # Quotes system-dependent boolean value.
            #

            public
            def quote_boolean(boolean)
                boolean ? "TRUE" : "FALSE"
            end


            ##### EXECUTING
            
            ##
            # Returns the DBI driver name.
            # @return [String] driver name
            #
            
            public
            def driver_name
                "Pg"
            end

            ##
            # Opens the connection.
            #
            # It's lazy, so it will open connection before first request through
            # {@link native_connection()} method.
            #

            public
            def open_connection(settings)
                if not settings[:database] or not settings[:username]
                    raise FluentQuery::Drivers::Exception::new("Database name and username is required for connection.")
                end
                
                super(settings)
            end

            ##
            # Returns native connection.
            #

            public
            def native_connection
            
                super()

                # Gets settings
                encoding, schema = @_nconnection_settings.take_values(:encoding, :schema)
                
                if encoding.nil?
                    encoding = "UTF8"
                end

                # Sets encoding and default schema
                @_nconnection.do("SET NAMES " << self.quote_string(encoding) << ";")

                if not schema.nil?
                    @_nconnection.do("SET search_path = " << self.quote_identifier(schema) << ", pg_catalog;")
                end

                return @_nconnection
                
            end
        end
    end
end

