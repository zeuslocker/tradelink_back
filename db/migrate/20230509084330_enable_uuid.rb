class EnableUuid < ActiveRecord::Migration[7.0]
  enable_extension 'uuid-ossp'
  enable_extension 'pgcrypto'
end
