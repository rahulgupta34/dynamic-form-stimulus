class Name < ApplicationRecord
    
    after_create_commit { broadcast_prepend_to "names" }
    after_update_commit { broadcast_update_to "names" }
    after_destroy_commit { broadcast_remove_to "names" }
    
    Hobby = %W{ Java C Cpp Ruby Rails }
    
end
