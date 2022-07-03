class Post < ApplicationRecord
    enum :status, %i(draft published shipped dispatched canceled)
end
